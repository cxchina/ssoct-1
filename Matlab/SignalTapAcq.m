% Using the SignalTap II MATLAB MEX Function to Capture Data
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/04/07

%% 
% acqData = alt_signaltap_run('D:\Edgar\Documents\ssoct\FPGA\ADC_Test02\Aline_monitor.stp',...
%     'signed','Aline_monitor_inst','acq_data_in','sweepTrigger');
acqData = alt_signaltap_run('D:\Edgar\Documents\ssoct\FPGA\ADC_Test02\Aline_monitor.stp');
