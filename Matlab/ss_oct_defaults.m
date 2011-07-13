function ss_oct_defaults
% Loads default values most common spm_lot variables to SSOctDefaults structure,
% as a global variable
% SYNTAX:
% ss_oct_defaults
% INPUTS:
% None
% OUTPUTS:
% None:  Just a global structure containing defaults values of common spm_lot 
%        variables named SSOctDefaults
% Care must be taken when modifying this file!
%_______________________________________________________________________________
% Copyright (C) 2010 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/07/11

% Default values for ss_oct in structure SSOctDefaults
global SSOctDefaults

% Directories & file names
%===============================================================================
% Installation directory
SSOctDefaults.dirUser           = 'D:\Edgar\Documents\ssoct\Matlab\';
% Experiments data directory
SSOctDefaults.dirExp            = 'D:\Edgar\Documents\ssoct\Matlab\Acquisition\DATA\';
% Maximize figure
SSOctDefaults.screenSize        = get(0,'Screensize');
SSOctDefaults.screenSize        = [1 40 SSOctDefaults.screenSize(3)...
    SSOctDefaults.screenSize(4)-40];

% SS-OCT experiment specific variables
%===============================================================================
% Server machine (FPGA)
SSOctDefaults.serverAddress     = '192.168.1.234';
SSOctDefaults.portNumber        = 30;
% Number of samples per A-line
SSOctDefaults.NSAMPLES          = 1170;
% Tx & Rx buffer size for all socket sends & receives
SSOctDefaults.BUFFERSIZE        = 9000;
% Number of characters of startup menu
SSOctDefaults.MENUSIZE          = 351;
% Save to file
SSOctDefaults.save2file         = false;
% Number of A-lines per frame
SSOctDefaults.nLinesPerFrame    = 840;
% Number of frames per B-scan
SSOctDefaults.nFrames           = 400;
% Number of total samples per B-scan
SSOctDefaults.nAcqSamples       = SSOctDefaults.nLinesPerFrame *...
    SSOctDefaults.nFrames;
%===============================================================================
% OCT axial resolution
%===============================================================================
% Center wavelength
SSOctDefaults.lambda0           = 1310e-9;
% FWHM in wavelength
SSOctDefaults.delta_lambda      = 100e-9;
% Axial resolution in air
SSOctDefaults.zr_air            = (2/pi)*log(2)*SSOctDefaults.lambda0^2 /...
    SSOctDefaults.delta_lambda;
% Index of refraction of tissue
SSOctDefaults.n                 = 1.4;
% Axial resolution in tissue
SSOctDefaults.zr                = SSOctDefaults.zr_air / SSOctDefaults.n;

%===============================================================================
% OCT transverse resolution
%===============================================================================
% Entrance pupil diameter
SSOctDefaults.EP                = [4e-3 4e-3 4e-3];
% F280APC-C beam diameter
SSOctDefaults.beamWaist         = [3.4 3.4 3.4]*1e-3;
% Effective Focal Length [LSM02 LSM03 LSM04]
SSOctDefaults.EFL               = [18 36 54]*1e-3;
% Numerical Aperture
SSOctDefaults.NA                = sqrt(1 ./ (1 + (2.*SSOctDefaults.EFL ./ ...
    SSOctDefaults.beamWaist).^2));  
% Transverse (lateral) resolution
SSOctDefaults.rr                = (2/pi)*SSOctDefaults.lambda0 ./ SSOctDefaults.NA;

%===============================================================================
% Maximum path difference (Scan Range of a FDOCT) (Penetration depth)
%===============================================================================
SSOctDefaults.delta_Z_Nq        = SSOctDefaults.lambda0^2 * ...
    SSOctDefaults.NSAMPLES / (4*SSOctDefaults.delta_lambda*SSOctDefaults.n);
% Index of refraction of air
SSOctDefaults.n_air             = 1;
SSOctDefaults.delta_Z_Nq_air    = SSOctDefaults.lambda0^2 * ...
    SSOctDefaults.NSAMPLES / (4*SSOctDefaults.delta_lambda*SSOctDefaults.n_air);
% z-axis in um
SSOctDefaults.zAxis             = 1e6*linspace(SSOctDefaults.delta_Z_Nq_air ./...
    SSOctDefaults.NSAMPLES,SSOctDefaults.delta_Z_Nq_air / 2,SSOctDefaults.NSAMPLES / 2);

% Wavelength range
SSOctDefaults.minLambda         = 1258;
SSOctDefaults.maxLambda         = 1361.2;
SSOctDefaults.vectorLambda      = linspace(SSOctDefaults.minLambda,...
    SSOctDefaults.maxLambda, SSOctDefaults.NSAMPLES);

