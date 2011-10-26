function flush_data
% Reads the first menu sent by NIOS and flushes reception buffer
% SYNTAX:
% flush_data
% INPUTS:
% None
% OUTPUTS:
% None
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/07/11

% Modifies values of global variable
global SSOctDefaults

% Read elements at the beginning of connection to flush buffer
flush = pnet(SSOctDefaults.tcpConn,'read',SSOctDefaults.MENUSIZE,'uint8');
% Show flushed data
disp(char(flush))

% ==============================================================================
% [EOF]
