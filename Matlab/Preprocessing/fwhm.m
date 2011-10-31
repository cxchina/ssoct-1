function [FWHM, peak_pos, FWHM_um, peak_pos_m] = fwhm(signal)
% wrapper function to calculate_FWHM.m, gives fwhm and position in um
% SYNTAX:
% [FWHM, peak_pos, peak_pos_um] = fwhm(signal)
% INPUTS:
% signal    signal to be analyzed (usually amplitude of an A-line)
% OUTPUTS:
% FWHM      Full Width at Half-Maximum of largest peak in signal (in pixels)
% peak_pos  Position of found peak (in pixels)
% FWHM      Full Width at Half-Maximum of largest peak in signal (in um)
% peak_pos  Position of found peak (in m)
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/10/28

% Modifies values of global variable
global SSOctDefaults
% Echo theoretical resolution to screen
% fprintf('Theoretical axial resolution (in air): %.3g um\n',1e6*SSOctDefaults.zr_air)

%Pixel width (in m)
pixelWidth = 2*SSOctDefaults.delta_Z_Nq_air ./ (SSOctDefaults.NSAMPLES+1);
% Calculate FWHM of given signal
[FWHM, peak_pos] = calculate_FWHM(signal);

% Output in um
FWHM_um     = FWHM      * pixelWidth * 1e6;
% Output in m
peak_pos_m  = peak_pos  * pixelWidth;
 
% ==============================================================================
% [EOF]
