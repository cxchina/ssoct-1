% Reads .CSV file from Tektronix DSO3202A Scope
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/05/05
filename = 'SourceSpectrum.csv';
pathname = 'D:\Edgar\Documents\OCT\';
[filename, pathname] = uigetfile({'*.csv', 'Comma Separated Value (*.csv)'},...
    'Pick a .CSV file',fullfile(pathname,filename));
if isequal(filename,0) || isequal(pathname,0)
    disp('User pressed cancel')
    return
else
    C = importdata(fullfile(pathname,filename), ',', 2);
end
figure; set(gcf,'color','w')
plot(C.data(:,1),C.data(:,2),'r-',C.data(:,1),C.data(:,3),'k-')
