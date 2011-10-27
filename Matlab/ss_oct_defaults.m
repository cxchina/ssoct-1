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
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/07/11

% Default values for ss_oct in structure SSOctDefaults
global SSOctDefaults

%===============================================================================
% Directories & file names
%===============================================================================
% Installation directory
SSOctDefaults.dirUser           = 'D:\Edgar\Documents\ssoct\Matlab\';
% Data directory
SSOctDefaults.dirExp            = 'D:\Edgar\Documents\ssoct\Matlab\Acquisition\DATA\';
% Current Experiments folder
SSOctDefaults.dirCurrExp        = [];
% LabView folder
SSOctDefaults.dirLabView        = 'D:\Edgar\Documents\ssoct\LabView\SSS01\';
% Name of the file containing acquisition parameters
SSOctDefaults.acqParamFileName  = 'acqParam.csv';
% Name of the subject
SSOctDefaults.subjectID         = 'NO_NAME';
% Description of the experiment
SSOctDefaults.expDescription    = 'EMPTY';
% Maximize figure
SSOctDefaults.screenSize        = get(0,'Screensize');
SSOctDefaults.screenSize        = [1+SSOctDefaults.screenSize(3)/2 40 ...
    SSOctDefaults.screenSize(3)/2 ...
    SSOctDefaults.screenSize(4)-40];

%===============================================================================
% SS-OCT experiment specific variables
%===============================================================================
% Server machine (FPGA)
SSOctDefaults.serverAddress     = '192.168.1.234';
SSOctDefaults.portNumber        = 30;
% Number of samples per A-line (1170)
SSOctDefaults.NSAMPLES          = 1170;
% Number of bytes per A-line (2368) > NSAMPLES*2=2340
SSOctDefaults.nBytesPerAline    = 2368;
% Number of 16-bit words per A-line (nBytesPerAline/2)
SSOctDefaults.nWordsPerAline    = SSOctDefaults.nBytesPerAline/2;
% Number of characters of startup menu
SSOctDefaults.MENUSIZE          = 360;
% Save to file
SSOctDefaults.save2file         = true;
% Number of A-lines per frame
SSOctDefaults.nLinesPerFrame    = 1024;
% Number of frames per volume
SSOctDefaults.nFrames           = 64;
% Number of saved frames
SSOctDefaults.nFramesSaved      = 0;
% Number of total samples per scan
SSOctDefaults.nAcqSamples       = SSOctDefaults.nLinesPerFrame *...
    SSOctDefaults.nFrames;
% Tx & Rx buffer size for all socket sends & receives
SSOctDefaults.BUFFERSIZE        = SSOctDefaults.nBytesPerAline *...
    SSOctDefaults.nLinesPerFrame;
% Display B-scan in log scale
SSOctDefaults.displayLog        = false;
% Display Color Bar
SSOctDefaults.displayColorBar   = true;
% Interferogram signal plot
SSOctDefaults.displaySingleLine = true;
% Resamling data at k-clock frequency
SSOctDefaults.resampleData      = false;
% Correct B-scan in real-time
SSOctDefaults.corrBscan         = false;
% Required pause between acquired volumes (depends on nSamplesPerVolume)
SSOctDefaults.pauseTime         = 1.8;

%===============================================================================
% Galvo mirrors parameters
%===============================================================================
SSOctDefaults.galvos.xStartVolt         = -1;
SSOctDefaults.galvos.xEndVolt           = 1;
SSOctDefaults.galvos.yStartVolt         = -1;
SSOctDefaults.galvos.yEndVolt           = 1;
SSOctDefaults.galvos.xStartUm           = -100;
SSOctDefaults.galvos.xEndUm             = 100;
SSOctDefaults.galvos.yStartUm           = -100;
SSOctDefaults.galvos.yEndUm             = 100;
% Number of samples per volume scan (given by LabView)
SSOctDefaults.galvos.nSamplesPerVolume  = 1100;


%===============================================================================
% OCT axial resolution
%===============================================================================
% Center wavelength
SSOctDefaults.lambda0           = 1310e-9;
% Wavelength range
SSOctDefaults.minLambda         = 1258e-9;
SSOctDefaults.maxLambda         = 1361.2e-9;
% FWHM in wavelength
% SSOctDefaults.delta_lambda      = 100e-9;
SSOctDefaults.delta_lambda      = SSOctDefaults.maxLambda - SSOctDefaults.minLambda;
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
% Transverse (lateral) resolution for different scan lenses [LSM02 LSM03 LSM04]
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
% Wavenumber range
SSOctDefaults.minK              = 2*pi / SSOctDefaults.maxLambda;
SSOctDefaults.maxK              = 2*pi / SSOctDefaults.minLambda;
% Wavenumbers column vector
SSOctDefaults.vectorK           = linspace(SSOctDefaults.maxK,...
    SSOctDefaults.minK, SSOctDefaults.NSAMPLES)';
% Lambda Column Vector (in nm)
SSOctDefaults.vectorLambda      = 2*pi ./ SSOctDefaults.vectorK;
% z-axis in um (air)
SSOctDefaults.zAxis_air         = linspace(SSOctDefaults.delta_Z_Nq_air ./...
    SSOctDefaults.NSAMPLES,SSOctDefaults.delta_Z_Nq_air,SSOctDefaults.NSAMPLES);
% z-axis in um (tissue)
SSOctDefaults.zAxis             = linspace(SSOctDefaults.delta_Z_Nq ./...
    SSOctDefaults.NSAMPLES,SSOctDefaults.delta_Z_Nq,SSOctDefaults.NSAMPLES);
% Positive z-axis in um (air)
SSOctDefaults.positiveZaxis_air = linspace(SSOctDefaults.delta_Z_Nq_air ./...
    SSOctDefaults.NSAMPLES,SSOctDefaults.delta_Z_Nq_air,SSOctDefaults.NSAMPLES/2);
% Positive z-axis in um (tissue)
SSOctDefaults.positiveZaxis     = linspace(SSOctDefaults.delta_Z_Nq ./...
    SSOctDefaults.NSAMPLES,SSOctDefaults.delta_Z_Nq,SSOctDefaults.NSAMPLES/2);
% ==============================================================================
% [EOF]
