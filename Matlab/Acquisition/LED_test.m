function LED_test
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/07/11

% Modifies values of global variable
global SSOctDefaults

% Write commands '0\n\r' to '6\n\r'
for iComm = 0:6,
    pnet(SSOctDefaults.tcpConn,'write',uint8([48+iComm 10 13]));
    pause(0.1)
    % Receive 35+2 characters from FPGA
    textReceived = uint8(swapbytes(pnet(SSOctDefaults.tcpConn,'read','uint8')));
    disp(char(textReceived'))
end
