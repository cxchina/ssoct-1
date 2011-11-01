function [mappedFile, varargout] = readOCTmapFile(varargin)
% Maps a .dat file into memory
% SYNTAX:
% mappedFile = readOCTmapFile(fileName)
% INPUTS:
% [fileName]    Optional input with the full file name (path+file.dat)
% OUTPUTS:
% mappedFile    Memory mapped file
% [pathName]    Directory path
% [fileName]    File name
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/09/20

% Load default parameters
ss_oct_get_defaults

% Modifies values of global variable
global SSOctDefaults

% only want 1 optional inputs at most
numVarArgs = length(varargin);
if numVarArgs > 1
    error('readOCTmapFile:TooManyInputs', ...
        'requires at most 1 optional input');
end

% set defaults for optional inputs (empty)
optArgs = {[]};

% now put these defaults into the optArgs cell array,
% and overwrite the ones specified in varargin.
optArgs(1:numVarArgs) = varargin;
% or ...
% [optargs{1:numvarargs}] = varargin{:};

% Place optional args in memorable variable names
[fileName] = optArgs{:};

if isempty(fileName)
    [fileName, pathName] = uigetfile('*.dat',...
        'Pick a data file',...
        SSOctDefaults.dirExp);
    if isequal(fileName,0) || isequal(pathName,0)
        % Return an empty matrix
        mappedFile = [];
        disp('User pressed cancel')
        return
    else
        % Read acquisition parameters generated by LabView
        SSOctDefaults.acqParam = readCSVfile(fullfile(pathName,...
            SSOctDefaults.acqParamFileName));
        % Map the .dat file to a variable
        mappedFile = memmapfile(fullfile(pathName,fileName), 'format', 'uint16',...
            'writable', false);
        % Calculate the number of recorded B-frames
        nFramesSaved = numel(mappedFile.Data) / SSOctDefaults.NSAMPLES / ...
            SSOctDefaults.nLinesPerFrame;
        % Apply the right format to the mapped matrix
        mappedFile.Format = {'uint16' [SSOctDefaults.NSAMPLES SSOctDefaults.nLinesPerFrame...
            nFramesSaved] 'rawData'};
    end
else
    [pathName, fileName, fileExt] = fileparts(fileName);
    % Read acquisition parameters generated by LabView
    SSOctDefaults.acqParam = readCSVfile(fullfile(pathName,...
        SSOctDefaults.acqParamFileName));
    % Map the .dat file to a variable
    mappedFile = memmapfile(fullfile(pathName,[fileName fileExt]), 'format', 'uint16',...
        'writable', false);
    % Calculate the number of recorded B-frames
    nFramesSaved = numel(mappedFile.Data) / SSOctDefaults.NSAMPLES / ...
        SSOctDefaults.nLinesPerFrame;
    % Apply the right format to the mapped matrix
    mappedFile.Format = {'uint16' [SSOctDefaults.NSAMPLES SSOctDefaults.nLinesPerFrame...
        nFramesSaved] 'rawData'};
end
% Optional output arguments
nArgsOut = max(nargout,1)-1;
switch nArgsOut
    case 1
        varargout{1} = pathName;
    case 2
        varargout{1} = pathName;
        varargout{2} = fileName;
end
% ==============================================================================
% [EOF]
