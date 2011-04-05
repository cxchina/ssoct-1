
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %{tool}
% file : fft1536_tb.m
%
% Description : The following Matlab testbench excercises the Altera FFT Model fft512_model.m
% generated by Altera's FFT Megacore and outputs results to text files.
%
% 2001-2007 Altera Corporation, All Rights Reserved
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all; clc;

  
% Read input complex vector, and output complex vector from source text files 
fidr = fopen('real_input.txt','r');                                            
fidi = fopen('imag_input.txt','r');  
reali=fscanf(fidr,'%d');                                                      
imagi=fscanf(fidi,'%d');      
fclose(fidi);                                                                  
fclose(fidr);   
  
fidor = fopen('real_output_ver.txt', 'r');
fidoi = fopen('imag_output_ver.txt', 'r');
realo = fscanf(fidor,'%d');
imago = fscanf(fidoi,'%d');
fclose(fidor);                                                                  
fclose(fidoi);                                                                  

lengthr = min(length(reali), length(realo));
lengthi = min(length(imagi), length(imago));
figure(1)
subplot(231)
plot(reali(1:lengthr));
title('input vector');
ylabel('real')
subplot(234)
plot(imagi(1:lengthi));
ylabel('imaginary')

% figure(2)
subplot(232)
plot(realo(1:lengthr));
title('output vector');
subplot(235)
plot(imago(1:lengthi));

diffr= ((reali(1:lengthr)-realo(1:lengthr))) ./ reali(1:lengthr);
diffi= (imagi(1:lengthi)-imago(1:lengthi)) ./ imagi(1:lengthr);
% figure(3)
subplot(233)
plot(diffr);
title('diff\_real [%]');
subplot(236)
plot(diffi);
title('diff\_imag [%]');

