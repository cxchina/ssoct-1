// OCT acquisition and data transfer via TCP/IP
// Version 03
/******************************************************************************
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************                                                                             *
* Date - October 24, 2006                                                     *
* Module - simple_socket_server.c                                             *
*                                                                             *                                                                             *
******************************************************************************/
 
/******************************************************************************
 * Simple Socket Server (SSS) example. 
 * 
 * This example demonstrates the use of MicroC/OS-II running on NIOS II.       
 * In addition it is to serve as a good starting point for designs using       
 * MicroC/OS-II and Altera NicheStack TCP/IP Stack - NIOS II Edition.                                          
 *                                                                             
 * -Known Issues                                                             
 *     None.   
 *      
 * Please refer to the Altera NicheStack Tutorial documentation for details on this 
 * software example, as well as details on how to configure the NicheStack TCP/IP 
 * networking stack and MicroC/OS-II Real-Time Operating System.  
 */

#include <stdio.h>
#include <string.h>
#include <ctype.h>

/* MicroC/OS-II definitions */
#include "includes.h"

/* Simple Socket Server definitions */
#include "simple_socket_server.h"                                                                    
#include "alt_error_handler.h"

/* Nichestack definitions */
#include "ipport.h"
#include "tcpport.h"

/* Altera Avalon registers */
#include "altera_avalon_pio_regs.h" 

/* Timer stuf */
#include <time.h>
#include <sys/alt_timestamp.h>

/* Global variables */
unsigned long   DDR2_address    = 0;
unsigned char*  dataPointer;
char            menu            = 1;
unsigned long   nLinesPerFrame  = 0;
unsigned long   nFramesPerVol   = 0;
signed short    iParameters     = 0;
unsigned char   volAcqFinished  = 0;

/*
 * Global handles (pointers) to our MicroC/OS-II resources. All of resources 
 * beginning with "SSS" are declared and created in this file.
 */

/*
 * This SSSLEDCommandQ MicroC/OS-II message queue will be used to communicate 
 * between the simple socket server task and Nios Development Board LED control 
 * tasks.
 *
 * Handle to our MicroC/OS-II Command Queue and variable definitions related to 
 * the Q for sending commands received on the TCP-IP socket from the 
 * SSSSimpleSocketServerTask to the LEDManagementTask.
 */
OS_EVENT  *SSSLEDCommandQ;
#define SSS_LED_COMMAND_Q_SIZE  30  /* Message capacity of SSSLEDCommandQ */
void *SSSLEDCommandQTbl[SSS_LED_COMMAND_Q_SIZE]; /*Storage for SSSLEDCommandQ*/


/*
 * Handle to our MicroC/OS-II LED Event Flag.  Each flag corresponds to one of
 * the LEDs on the Nios Development board, D0 - D7. 
 */
OS_FLAG_GRP *SSSLEDEventFlag;

/*
 * Handle to our MicroC/OS-II LED Lightshow Semaphore. The semaphore is checked 
 * by the LED7SegLightshowTask each time it updates 7 segment LED displays, 
 * U8 and U9.  The LEDManagementTask grabs the semaphore away from the lightshow task to
 * toggle the lightshow off, and gives up the semaphore to turn the lightshow
 * back on.  The LEDManagementTask does this in response to the CMD_LEDS_LIGHTSHOW
 * command sent from the SSSSimpleSocketServerTask when the user sends a toggle 
 * lightshow command over the TCPIP socket.
 */
OS_EVENT *SSSLEDLightshowSem;

/* Definition of Task Stacks for tasks not invoked by TK_NEWTASK 
 * (do not use NicheStack) 
 */

OS_STK    LEDManagementTaskStk[TASK_STACKSIZE];
OS_STK    LED7SegLightshowTaskStk[TASK_STACKSIZE];

/*
 * Create our MicroC/OS-II resources. All of the resources beginning with 
 * "SSS" are declared in this file, and created in this function.
 */
void SSSCreateOSDataStructs(void)
{
  INT8U error_code;
  
  /*
  * Create the resource for our MicroC/OS-II Queue for sending commands 
  * received on the TCP/IP socket from the SSSSimpleSocketServerTask()
  * to the LEDManagementTask().
  */
  SSSLEDCommandQ = OSQCreate(&SSSLEDCommandQTbl[0], SSS_LED_COMMAND_Q_SIZE);
  if (!SSSLEDCommandQ)
  {
     alt_uCOSIIErrorHandler(EXPANDED_DIAGNOSIS_CODE, 
     "Failed to create SSSLEDCommandQ.\n");
  }
  
 /* Create our MicroC/OS-II LED Lightshow Semaphore.  The semaphore is checked 
  * by the SSSLEDLightshowTask each time it updates 7 segment LED displays, 
  * U8 and U9.  The LEDTask grabs the semaphore away from the lightshow task to
  * toggle the lightshow off, and gives up the semaphore to turn the lightshow
  * back on.  The LEDTask does this in response to the CMD_LEDS_LIGHTSHOW
  * command sent from the SSSSimpleSocketServerTask when the user sends the 
  * toggle lightshow command over the TCPIP socket.
  */
  SSSLEDLightshowSem = OSSemCreate(1);
  if (!SSSLEDLightshowSem)
  {
     alt_uCOSIIErrorHandler(EXPANDED_DIAGNOSIS_CODE, 
                            "Failed to create SSSLEDLightshowSem.\n");
  }
  
 /*
  * Create our MicroC/OS-II LED Event Flag.  Each flag corresponds to one of
  * the LEDs on the Nios Development board, D0 - D7. 
  */   
  SSSLEDEventFlag = OSFlagCreate(0, &error_code);
  if (!SSSLEDEventFlag)
  {
     alt_uCOSIIErrorHandler(error_code, 0);
  }
}

/* This function creates tasks used in this example which do not use sockets.
 * Tasks which use Interniche sockets must be created with TK_NEWTASK.
 */
 
void SSSCreateTasks(void)
{
   INT8U error_code;
  
   error_code = OSTaskCreateExt(LED7SegLightshowTask,
                             NULL,
                             (void *)&LED7SegLightshowTaskStk[TASK_STACKSIZE-1],
                             LED_7SEG_LIGHTSHOW_TASK_PRIORITY,
                             LED_7SEG_LIGHTSHOW_TASK_PRIORITY,
                             LED7SegLightshowTaskStk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
   
   alt_uCOSIIErrorHandler(error_code, 0);
  
   error_code = OSTaskCreateExt(LEDManagementTask,
                              NULL,
                              (void *)&LEDManagementTaskStk[TASK_STACKSIZE-1],
                              LED_MANAGEMENT_TASK_PRIORITY,
                              LED_MANAGEMENT_TASK_PRIORITY,
                              LEDManagementTaskStk,
                              TASK_STACKSIZE,
                              NULL,
                              0);

   alt_uCOSIIErrorHandler(error_code, 0);

}


/*
 * sss_reset_connection()
 * 
 * This routine will, when called, reset our SSSConn struct's members 
 * to a reliable initial state. Note that we set our socket (FD) number to
 * -1 to easily determine whether the connection is in a "reset, ready to go" 
 * state.
 */
void sss_reset_connection(SSSConn* conn)
{
  memset(conn, 0, sizeof(SSSConn));

  conn->fd = -1;
  conn->state = READY;
  conn->rx_wr_pos = conn->rx_buffer;
  conn->rx_rd_pos = conn->rx_buffer;
  return;
}

/*
 * sss_send_menu()
 * 
 * This routine will transmit the menu out to the telent client.
 */
void sss_send_menu(SSSConn* conn)
{
    alt_u8  tx_buf[SSS_TX_BUF_SIZE];
    alt_u8 *tx_wr_pos = tx_buf;
    unsigned short  bytes_sent;
    
    tx_wr_pos += sprintf(tx_wr_pos,"=======================================\n");
    tx_wr_pos += sprintf(tx_wr_pos,"   Swept Source OCT Acquisition Menu   \n");
    tx_wr_pos += sprintf(tx_wr_pos,"=======================================\n");
    tx_wr_pos += sprintf(tx_wr_pos,"A   : Send acquisition parameters      \n");
    tx_wr_pos += sprintf(tx_wr_pos,"B   : Take reference measurements      \n");
    tx_wr_pos += sprintf(tx_wr_pos,"C   : Continuously send data to PC     \n");
    tx_wr_pos += sprintf(tx_wr_pos,"Q   : Terminate session                \n");
    tx_wr_pos += sprintf(tx_wr_pos,"=======================================\n");
    tx_wr_pos += sprintf(tx_wr_pos,"Enter your choice & press return:      \n");
    
    bytes_sent = send(conn->fd, tx_buf, tx_wr_pos - tx_buf, 0);
    #if DEBUG_CODE
        printf("Bytes sent from the menu = %d\n",bytes_sent);
    #endif
      
    return;
}

/*
 * sss_handle_accept()
 * 
 * This routine is called when ever our listening socket has an incoming
 * connection request. Since this example has only data transfer socket, 
 * we just look at it to see whether its in use... if so, we accept the 
 * connection request and call the telent_send_menu() routine to transmit
 * instructions to the user. Otherwise, the connection is already in use; 
 * reject the incoming request by immediately closing the new socket.
 * 
 * We'll also print out the client's IP address.
 */
void sss_handle_accept(int listen_socket, SSSConn* conn)
{
  int                 socket, len;
  struct sockaddr_in  incoming_addr;

  len = sizeof(incoming_addr);

  if ((conn)->fd == -1)
  {
     if((socket=accept(listen_socket,(struct sockaddr*)&incoming_addr,&len))<0)
     {
         alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,
                                 "[sss_handle_accept] accept failed");
     }
     else
     {
        (conn)->fd = socket;
        sss_send_menu(conn);
        printf("[sss_handle_accept] accepted connection request from %s\n",
               inet_ntoa(incoming_addr.sin_addr));
     }
  }
  else
  {
    printf("[sss_handle_accept] rejected connection request from %s\n",
           inet_ntoa(incoming_addr.sin_addr));
  }

  return;
}

/*
 * sss_exec_command()
 * 
 * This routine is called whenever we have new, valid receive data from our 
 * sss connection. It will parse through the data simply looking for valid
 * commands to the sss server.
 * 
 * Incoming commands to talk to the board LEDs are handled by sending the 
 * MicroC/OS-II SSSLedCommandQ a pointer to the value we received.
 * 
 * If the user wishes to quit, we set the "close" member of our SSSConn
 * struct, which will be looked at back in sss_handle_receive() when it 
 * comes time to see whether to close the connection or not.
 */
void sss_exec_command(SSSConn* conn)
{
    int             bytes_to_process = conn->rx_wr_pos - conn->rx_rd_pos;
    INT8U           tx_buf[SSS_TX_BUF_SIZE];
    INT8U*          tx_wr_pos = tx_buf;
    // Local variables
    unsigned long   RAM_address     = 0;
    unsigned short  bytes_sent      = 0;
    unsigned long   iLines          = 0;
    
    #if PRINT_TIME
        // timer stuff
        unsigned int   num_ticks = 0;
        unsigned int   time1=0;
        unsigned int   time2=0;
        unsigned int   time3=0;
        unsigned int   timer_overhead=0;
    #endif

    /*
    * "SSSCommand" is declared static so that the data will reside 
    * in the BSS segment. This is done because a pointer to the data in 
    * SSSCommand
    * will be passed via SSSLedCommandQ to the LEDManagementTask.  
    * Therefore SSSCommand cannot be placed on the stack of the 
    * SSSSimpleSocketServerTask, since the LEDManagementTask does not 
    * have access to the stack of the SSSSimpleSocketServerTask.
    */
    
    //static INT8U SSSCommand;
    static unsigned char SSSCommand;
    
    #if DEBUG_CODE
        printf("bytes to process %d\n", bytes_to_process);
    #endif
    
    while(bytes_to_process--)
    {
        //SSSCommand = toupper(*(conn->rx_rd_pos++));
        SSSCommand = *(conn->rx_rd_pos++); // Max version
        #if DEBUG_CODE
            printf("Value of SSSCommand %i.\n", (INT8U)SSSCommand);
        #endif
        
        if(menu == 1)
        {
            // Initial menu
            switch (SSSCommand)
            {
                case 65:   printf("A   : Send acquisition parameters      \n");    menu = 65;   break;
                case 66:   printf("B   : Take reference measurements      \n");    menu = 66;   break;
                case 67:   printf("C   : Continuously send data to PC     \n");    menu = 67;   break;
                case 68:   printf("D   : Test Menu                        \n");    menu = 68;   break;
                default:                                                                        break;
            }
        }
        else
        {
 
            if(menu == 65) 
            {
                //////////////////////////////////////////////////////////
                // Acquisition parameters
                //////////////////////////////////////////////////////////
                switch (iParameters)
                {
                    case 0: nLinesPerFrame   = SSSCommand;                  break;
                    case 1: nLinesPerFrame  += SSSCommand * 256;            break;
                    case 2: nLinesPerFrame  += SSSCommand * 65536;          break;
                    case 3: nLinesPerFrame  += SSSCommand * 16777216;       break;
                    
                    case 4: nFramesPerVol   = SSSCommand;                  break;
                    case 5: nFramesPerVol   += SSSCommand * 256;            break;
                    case 6: nFramesPerVol   += SSSCommand * 65536;          break;
                    case 7: nFramesPerVol   += SSSCommand * 16777216; 
                            menu = 1;       iParameters = -1;               break;
                    default:                                                break;
                }
                #if DEBUG_CODE  
                    printf("nLinesPerFrame: %lu nFramesPerVol: %lu Count: %i\n", nLinesPerFrame, nFramesPerVol, iParameters);
                #endif
                iParameters++;
            }
        } // END else -> menu != 1  
        #if DEBUG_CODE
            printf("menu = %d\n",menu);
        #endif          
        if(menu == 66)
        {
            //////////////////////////////////////////////////////////
            // Reference measurements
            //////////////////////////////////////////////////////////
            printf("Reference measurements\n");
            // Transmit initial trigger to LabView
            IOWR_ALTERA_AVALON_PIO_DATA(VOL_TRANSFER_DONE_PIO_BASE,1);
            usleep(20);               // Pause 1 000 microseconds
            // Reset trigger to LabView
            IOWR_ALTERA_AVALON_PIO_DATA(VOL_TRANSFER_DONE_PIO_BASE,0);
            printf("Reference trigger sent!\n");
            printf("A-lines per B-frame: %lu. B-frames per volume: %lu\n", nLinesPerFrame, nFramesPerVol);
            
            // Wait for volume recording to be done
            while(IORD_ALTERA_AVALON_PIO_DATA(VOL_RECORDING_DONE_PIO_BASE) == 0);
            
            //////////////////////////////////////////////////////////
            // B-frame transfer loop
            //////////////////////////////////////////////////////////
            for (iLines = 0; iLines < nLinesPerFrame; iLines++)
            {
                // Begin the transfer
                tx_wr_pos = tx_buf;
                //////////////////////////////////////////////////////////
                // Send single A-line
                //////////////////////////////////////////////////////////
                for (RAM_address = 0; RAM_address < NBYTES_PER_ALINE; RAM_address += 2)
                    {
                        #if DEBUG_CODE
                            if ((iLines == nLinesPerFrame-1) && (RAM_address == 0)) 
                                printf("tx_wr_pos at beginning = %p\n",tx_wr_pos);
                        #endif
                        // Write address port (to RAM)
                        dataPointer = (unsigned char*)DDR2_address;
                        // Send 16-bit data (swapped upper and lower bytes)
                        *tx_wr_pos++ = dataPointer[1]; 
                        *tx_wr_pos++ = dataPointer[0];
                        // Read 2 bytes
                        DDR2_address += 2;
                        if (DDR2_address >= DDR2_SIZE_BYTES)
                            // Reset DDR2 address if greater than 1Gbyte
                            DDR2_address -= DDR2_SIZE_BYTES;
                        #if DEBUG_CODE
                            if ((iLines == nLinesPerFrame-1) && (RAM_address == NBYTES_PER_ALINE-2)) 
                                printf("tx_wr_pos at end = %p\n",tx_wr_pos);
                        #endif
                    } // END of A-line loop
                    #if DEBUG_CODE
                        if (iLines == nLinesPerFrame-1) 
                            printf("tx_wr_pos after A-line= %p\n",tx_wr_pos);
                    #endif
                // Send a single A-line to the client
                bytes_sent = send(conn->fd, tx_buf, tx_wr_pos - tx_buf, 0);
                #if DEBUG_CODE
                    if (iLines == nLinesPerFrame-1)
                    {
                        printf("tx_wr_pos after send = %p\n",tx_wr_pos);
                        printf("tx_wr_pos after send = %p\n",tx_wr_pos);
                        printf("bytes_sent = %i\n",bytes_sent);
                        printf("tx_wr_pos - tx_buf = %li\n",tx_wr_pos - tx_buf);
                        printf("First address of tx_buf = %p\n",&tx_buf[0]);
                        printf("Last address of tx_buf = %p\n",&tx_buf[SSS_TX_BUF_SIZE]);
                    }
                #endif
                // Wait a little... Should know why...
                usleep(20); // 0.6 ms if sys_clk @ 90MHz
            } // END of volume / B-frame loop
            printf("\nDDR2 address after reference: %lu\n",DDR2_address);
            menu = 1;
            iParameters = 0;
        }

        if(menu == 67)
        {
            #if PRINT_TIME
                // This is some timer code to help you time the amount of time it 
                // takes to run your functions. 
                if(alt_timestamp_start() < 0)
                {
                    printf ("No timestamp device available\n");
                    //return 1;
                }
            else
                {
                    printf("Timer init done! \n");
                    // Get the number of clocks it takes + record time stamp:
                    time1 = alt_timestamp();
                    time2 = alt_timestamp();
                    timer_overhead = time2 - time1;
                    printf ("Number of ticks per second = %u\n", (unsigned int)alt_timestamp_freq());
                }
            #endif
            //////////////////////////////////////////////////////////
            // Continuous Acquisition
            //////////////////////////////////////////////////////////
            printf("Continuous acquisition\n");
            #if DEBUG_CODE
                printf("DDR2 address: %lu (same as before)\n",DDR2_address);
            #endif
            // Transmit initial trigger to LabView  
            IOWR_ALTERA_AVALON_PIO_DATA(VOL_TRANSFER_DONE_PIO_BASE,1);
            usleep(20);               // Pause 1 000 microseconds
            // Reset trigger to LabView
            IOWR_ALTERA_AVALON_PIO_DATA(VOL_TRANSFER_DONE_PIO_BASE,0);           
            printf("Acquisition start trigger sent!\n");
            printf("A-lines per B-frame: %lu. B-frames per volume: %lu\n",nLinesPerFrame,nFramesPerVol);
         
            while(1)
            {
                #if PRINT_TIME
                    // Reset timer
                    if(alt_timestamp_start() < 0)
                    {
                        printf ("No timestamp device available\n");                            
                    }
                    else
                    {
                        printf ("Timestamp reset!\n");
                        // Get the number of clocks it takes + record time stamp:
                        time1 = alt_timestamp();
                        time2 = alt_timestamp();
                        timer_overhead = time2 - time1;
                        // start timer for B-frame 
                        time1 = alt_timestamp();
                    }
                #endif
                
                // Read if volumeAcqfinished then transfer
                while (IORD_ALTERA_AVALON_PIO_DATA(VOL_RECORDING_DONE_PIO_BASE) == 0);
                
                #if PRINT_TIME
                    // retrieve time values
                    time3 = alt_timestamp();
                    num_ticks = time3 - time1 - timer_overhead;
                    printf("LabView signal sent No. ticks: %u\n",(unsigned int) num_ticks);
                #endif
                
                //////////////////////////////////////////////////////////
                // B-frame transfer loop
                //////////////////////////////////////////////////////////
                for (iLines = 0; iLines < nLinesPerFrame*nFramesPerVol; iLines++)
                {
                    // Begin the transfer
                    tx_wr_pos = tx_buf;

                    //////////////////////////////////////////////////////////
                    // Send single A-line
                    //////////////////////////////////////////////////////////
                    for (RAM_address = 0; RAM_address < NBYTES_PER_ALINE; RAM_address += 2)
                        {
                            // Write address port (to RAM)
                            dataPointer = (unsigned char*)DDR2_address;
                            // Send 16-bit data (swapped upper and lower bytes)
                            *tx_wr_pos++ = dataPointer[1]; 
                            *tx_wr_pos++ = dataPointer[0];
                            // Read 2 bytes
                            DDR2_address += 2;
                            if (DDR2_address >= DDR2_SIZE_BYTES)
                                // Reset DDR2 address if greater than 1Gbyte
                                DDR2_address -= DDR2_SIZE_BYTES;
                        } // END of A-line loop

                    // Send a single A-line to the client
                    bytes_sent = send(conn->fd, tx_buf, tx_wr_pos - tx_buf, 0);
                    
                } // END of volume / B-frame loop
                // Assert signal when the whole volume is transferred
                IOWR_ALTERA_AVALON_PIO_DATA(VOL_TRANSFER_DONE_PIO_BASE,1);
                usleep(20);       // Pause 1 000 microseconds
                // Transferred volume signal = 0
                IOWR_ALTERA_AVALON_PIO_DATA(VOL_TRANSFER_DONE_PIO_BASE,0);
                #if PRINT_TIME
                    // retrieve time values for a B-frame
                    time2 = alt_timestamp();
                    num_ticks = time2 - time1 - timer_overhead;
                    printf("%lu B-frames sent! No. ticks: %u\n", nFramesPerVol, (unsigned int) num_ticks);
                #endif
            } // END of continuous transfer loop
            menu = 1;
            iParameters = 0;
        } // END case 67
        
        if(menu == 68)
        {                
            //////////////////////////////////////////////////////////
            // Test menu
            //////////////////////////////////////////////////////////
            printf("CORRECT PROGRAM FLOW SHOULD NEVER GET HERE!!!\n");
            menu = 1;
            iParameters = 0;
        }
    } // END while(bytes_to_process--)
    #if DEBUG_CODE
        printf("Processed all bytes\n");
    #endif
    return;
}// END void sss_exec_command(SSSConn* conn)

/*
 * sss_handle_receive()
 * 
 * This routine is called whenever there is a sss connection established and
 * the socket assocaited with that connection has incoming data. We will first
 * look for a newline "\n" character to see if the user has entered something 
 * and pressed 'return'. If there is no newline in the buffer, we'll attempt
 * to receive data from the listening socket until there is.
 * 
 * The connection will remain open until the user enters "Q\n" or "q\n", as
 * deterimined by repeatedly calling recv(), and once a newline is found, 
 * calling sss_exec_command(), which will determine whether the quit 
 * command was received.
 * 
 * Finally, each time we receive data we must manage our receive-side buffer.
 * New data is received from the sss socket onto the head of the buffer,
 * and popped off from the beginning of the buffer with the 
 * sss_exec_command() routine. Aside from these, we must move incoming
 * (un-processed) data to buffer start as appropriate and keep track of 
 * associated pointers.
 */
void sss_handle_receive(SSSConn* conn)
{
    // Maxime's version
    int data_used = 0, n_bytes_received = 0;
    //INT8U *lf_addr; 
    conn->rx_rd_pos = conn->rx_buffer;
    conn->rx_wr_pos = conn->rx_buffer;
      
    printf("[sss_handle_receive] processing RX data\n");
        
    while(conn->state != CLOSE)
    {
        //Receiving bytes
        #if DEBUG_CODE
            printf("\nNumber of bytes we are looking for: %li\n",
            SSS_RX_BUF_SIZE - (conn->rx_wr_pos - conn->rx_buffer) -1);
        #endif
        n_bytes_received = recv(conn->fd, conn->rx_wr_pos, 
        SSS_RX_BUF_SIZE - (conn->rx_wr_pos - conn->rx_buffer) -1, 0);
          
        if(n_bytes_received > 0)
        {
            conn->rx_wr_pos += n_bytes_received;
            // Zero terminate so we can use string functions
            *(conn->rx_wr_pos+1) = 0; 
        }
        #if DEBUG_CODE
            printf("Data received addr: %p \n",conn->rx_wr_pos-n_bytes_received);  
            printf("rX buffer addr: %p \n",conn->rx_buffer);
        #endif    
        /* go off and do whatever the user wanted us to do */
        sss_exec_command(conn);
        #if DEBUG_CODE
            printf("Command executed\n");
        #endif
         
        /* 
        * When the quit command is received, update our connection state so that
        * we can exit the while() loop and close the connection
        */
        conn->state = conn->close ? CLOSE : READY;
        #if DEBUG_CODE
            printf("Command executed1\n");
        #endif
        /* Manage buffer */
        data_used = conn->rx_rd_pos - conn->rx_buffer;
        #if DEBUG_CODE
            printf("Command executed2: wr_pos %p rd_pos %p\n",conn->rx_wr_pos, conn->rx_rd_pos);
            printf("Data used %i\n",data_used);
        #endif
        memmove(conn->rx_buffer, conn->rx_rd_pos, 
           conn->rx_wr_pos - conn->rx_rd_pos);
        #if DEBUG_CODE
            printf("Command executed3\n");
        #endif
        conn->rx_rd_pos = conn->rx_buffer;
        #if DEBUG_CODE
            printf("Command executed4\n");
        #endif
        conn->rx_wr_pos -= data_used;
        #if DEBUG_CODE
            printf("Command executed5\n");
        #endif
        //memset(conn->rx_wr_pos, 0, data_used);
        #if DEBUG_CODE
            printf("Command executed6\n");
        #endif
    }
    printf("[sss_handle_receive] closing connection\n");
    close(conn->fd);
    sss_reset_connection(conn);
    return;
}

/*
 * SSSSimpleSocketServerTask()
 * 
 * This MicroC/OS-II thread spins forever after first establishing a listening
 * socket for our sss connection, binding it, and listening. Once setup,
 * it perpetually waits for incoming data to either the listening socket, or
 * (if a connection is active), the sss data socket. When data arrives, 
 * the approrpriate routine is called to either accept/reject a connection 
 * request, or process incoming data.
 */
void SSSSimpleSocketServerTask()
{
  int fd_listen, max_socket;
  struct sockaddr_in addr;
  static SSSConn conn;
  fd_set readfds;
  
  /*
   * Sockets primer...
   * The socket() call creates an endpoint for TCP of UDP communication. It 
   * returns a descriptor (similar to a file descriptor) that we call fd_listen,
   * or, "the socket we're listening on for connection requests" in our sss
   * server example.
   */ 
  if ((fd_listen = socket(AF_INET, SOCK_STREAM, 0)) < 0)
  {
    alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[sss_task] Socket creation failed");
  }
  
  /*
   * Sockets primer, continued...
   * Calling bind() associates a socket created with socket() to a particular IP
   * port and incoming address. In this case we're binding to SSS_PORT and to
   * INADDR_ANY address (allowing anyone to connect to us. Bind may fail for 
   * various reasons, but the most common is that some other socket is bound to
   * the port we're requesting. 
   */ 
  addr.sin_family = AF_INET;
  addr.sin_port = htons(SSS_PORT);
  addr.sin_addr.s_addr = INADDR_ANY;
  
  if ((bind(fd_listen,(struct sockaddr *)&addr,sizeof(addr))) < 0)
  {
    alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[sss_task] Bind failed");
  }
    
  /*
   * Sockets primer, continued...
   * The listen socket is a socket which is waiting for incoming connections.
   * This call to listen will block (i.e. not return) until someone tries to 
   * connect to this port.
   */ 
  if ((listen(fd_listen,1)) < 0)
  {
    alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[sss_task] Listen failed");
  }

  /* At this point we have successfully created a socket which is listening
   * on SSS_PORT for connection requests from any remote address.
   */
  sss_reset_connection(&conn);
  printf("[sss_task] Simple Socket Server listening on port %d\n", SSS_PORT);
   
  while(1)
  {
    /* 
     * For those not familiar with sockets programming...
     * The select() call below basically tells the TCPIP stack to return 
     * from this call when any of the events I have expressed an interest 
     * in happen (it blocks until our call to select() is satisfied). 
     * 
     * In the call below we're only interested in either someone trying to 
     * connect to us, or data being available to read on a socket, both of 
     * these are a read event as far as select is called.
     * 
     * The sockets we're interested in are passed in in the readfds 
     * parameter, the format of the readfds is implementation dependant
     * Hence there are standard MACROs for setting/reading the values:
     * 
     *   FD_ZERO  - Zero's out the sockets we're interested in
     *   FD_SET   - Adds a socket to those we're interested in
     *   FD_ISSET - Tests whether the chosen socket is set 
     */
    FD_ZERO(&readfds);
    FD_SET(fd_listen, &readfds);
    max_socket = fd_listen+1;

    if (conn.fd != -1)
    {
      FD_SET(conn.fd, &readfds);
      if (max_socket <= conn.fd)
      {
        max_socket = conn.fd+1;
      }
    }

    select(max_socket, &readfds, NULL, NULL, NULL);

    /* 
     * If fd_listen (the listening socket we originally created in this thread
     * is "set" in readfs, then we have an incoming connection request. We'll
     * call a routine to explicitly accept or deny the incoming connection 
     * request (in this example, we accept a single connection and reject any
     * others that come in while the connection is open).
     */
    if (FD_ISSET(fd_listen, &readfds))
    {
      sss_handle_accept(fd_listen, &conn);
    }
    /*
     * If sss_handle_accept() accepts the connection, it creates *another*
     * socket for sending/receiving data over sss. Note that this socket is
     * independant of the listening socket we created above. This socket's
     * descriptor is stored in conn.fd. If conn.fs is set in readfs... we have
     * incoming data for our sss server, and we call our receiver routine
     * to process it.
     */
    else
    {
      if ((conn.fd != -1) && FD_ISSET(conn.fd, &readfds))
      {
        sss_handle_receive(&conn);
      }
    }
  } /* while(1) */
}



/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
* Altera does not recommend, suggest or require that this reference design    *
* file be used in conjunction or combination with any other product.          *
******************************************************************************/

/******************************************************************************
                Representation of Data Types
Type                Size (Bytes)    Representation
char, signed char   1               two�s complement (ASCII)
unsigned char       1               binary (ASCII)
short, signed short 2               two�s complement
unsigned short      2               binary
int, signed int     4               two�s complement
unsigned int        4               binary
long, signed long   4               two�s complement
unsigned long       4               binary
float               4               IEEE
double              8               IEEE
pointer             4               binary
long long           8               two�s complement
unsigned long long  8               binary
******************************************************************************/
