function cont_acq
% Acquires OCT data either continuously or a fixed number of frames. Optionally
% save data to a .dat file. See scriptMirrorCharact to map .dat files to memory
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/09/15

% Modifies values of global variable
global SSOctDefaults

% New figure on white background
figure; set(gcf,'color','w')
% Change figure name
set(gcf,'Name','Continuous Acquisition')
% Maximize figure
set(gcf, 'OuterPosition', SSOctDefaults.screenSize);

% Send command chain ('C\n\r nLinesPerFrame nFrames') to the socket server
pnet(SSOctDefaults.tcpConn,'write',uint8([67 10 13 ...
    typecast(uint16(SSOctDefaults.nLinesPerFrame), 'uint8') ...
    typecast(uint16(SSOctDefaults.nFrames), 'uint8')]));
fprintf('Continuous acquisition...Press <Ctrl>+<C> to cancel\n')

% ------------------------------ Main Loop -------------------------------------
if SSOctDefaults.save2file
    % Close all open files
    fclose('all');
    % Default file name
    fileName = fullfile(SSOctDefaults.dirCurrExp,[datestr(now,'yyyy_mm_dd_HH_MM_SS') '.dat']);
    % Save file name of current experiment in global structure
    SSOctDefaults.CurrExpFileName = fileName;
    % Create binary file
    fid = fopen(fileName, 'w');
    iFrames = 1;
    tic
    while ~exist(fullfile(SSOctDefaults.dirCurrExp,'tostop.txt'),'file')
        [~, rawBscan16] = displayAcqOCT(iFrames);
        iFrames = iFrames + 1;
        % --------------------- Save a B-scan frame ----------------------------
        fwrite(fid, rawBscan16, 'uint16');
    end
    frameRate = iFrames/toc;
    fprintf('Approximate Frame Rate = %d fps\n',frameRate)
    fclose(fid);
    disp(['File saved as: ' fileName])
else
    %     Save data in a big variable
    %     SSOctDefaults.OCTfullAcq = zeros([SSOctDefaults.nFrames SSOctDefaults.NSAMPLES ...
    %         SSOctDefaults.nLinesPerFrame]);
    %     for iFrames = 1:SSOctDefaults.nFrames,
    iFrames = 1;
    while ~exist(fullfile(SSOctDefaults.dirCurrExp,'tostop.txt'),'file')
        displayAcqOCT(iFrames);
        iFrames = iFrames + 1;
    end
    disp('Transfer done!')
end
% Disconnect from socket server
disconnect_from_FPGA
% ==============================================================================

function [rawBscan rawBscan16] = displayAcqOCT(iFrames)
% ------------- Acquires and displays a single B-scan (frame) ------------------
%_______________________________________________________________________________
% Copyright (C) 2011 LIOM Laboratoire d'Imagerie Optique et Mol�culaire
%                    �cole Polytechnique de Montr�al
% Edgar Guevara
% 2011/09/15

% Load defaults
global SSOctDefaults
% Acquire raw B-scan
[rawBscan rawBscan16] = acq_Bscan(@rectwin,false);
%     Save data in a big variable
% SSOctDefaults.OCTfullAcq(iFrames,:,:) = rawBscan;
% Negative and Positive envelope
[posEnv negEnv] = detect_envelope(rawBscan(:,2));
% -------------- Plot a single interferogram (A-line) ------------------
subplot(222);
plot(1e9*SSOctDefaults.vectorLambda, rawBscan(:,2), 'k-',...
    1e9*SSOctDefaults.vectorLambda, posEnv,'r:',...
    1e9*SSOctDefaults.vectorLambda, negEnv,'b:');
title('Interferogram')
xlabel('\lambda [nm]')
ylabel('Intensity [ADC units]')
xlim(1e9*[SSOctDefaults.minLambda SSOctDefaults.maxLambda])
% ------------ Plot the phase of a single A-line -----------------------
subplot(248)
plot(1e9*SSOctDefaults.vectorLambda, unwrap(angle(hilbert...
    (rawBscan(:,2)))),'-k')
title('Interferogram phase')
xlabel('\lambda [nm]')
xlim(1e9*[SSOctDefaults.minLambda SSOctDefaults.maxLambda])
% --------------- Plot the a single A-line (FFT) -----------------------
subplot(247)
singleAline = BmodeScan2struct(rawBscan(:,2));    % log FFT
% Take only positive half of the symmetric FFT
singleAline = singleAline(SSOctDefaults.NSAMPLES/2 + 1 : ...
    SSOctDefaults.NSAMPLES);
if SSOctDefaults.displayLog
    singleAline = log(singleAline + 1);
    plot(10^3*SSOctDefaults.positiveZaxis_air, singleAline,'k-')
    ylabel('log(R) [a.u.]')
else
    plot(10^3*SSOctDefaults.positiveZaxis_air, singleAline,'k-')
    ylabel('Reflectivity [a.u.]')
end
title('Single A-line')
xlabel('z [mm]')
% --------------- Display a B-scan (single frame) ----------------------
subplot(121)
Bscan = BmodeScan2struct(rawBscan);
if SSOctDefaults.displayLog
    % Display in log scale, single-sided FFT, with z-axis in um
    imagesc(1:SSOctDefaults.nLinesPerFrame, 1e3*SSOctDefaults.zAxis_air,...
        log(Bscan(SSOctDefaults.NSAMPLES/2+1:end,:)+1));
    title(sprintf('log(R). Continuous Transfer. Frame %d',iFrames))
else
    % Display in linear scale, single-sided FFT, with z-axis in um
    imagesc(1:SSOctDefaults.nLinesPerFrame, 1e3*SSOctDefaults.zAxis_air,...
        Bscan(SSOctDefaults.NSAMPLES/2+1:end,:))
    title(sprintf('Continuous Transfer. Frame %d',iFrames))
end
if SSOctDefaults.displayColorBar
    colorbar;
else
    colorbar off;
end
axis tight
colormap(gray(255))
ylabel('z [mm]')
xlabel('A-lines')
% ==============================================================================
% [EOF]
