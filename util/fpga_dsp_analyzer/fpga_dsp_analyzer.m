clear all    % Clean all constant and variables
close all    % Close all windows
%clf         % Clean the figure window
clc          % Clean the command window
%echo off    % Inhibits the code view in the command window during its execution

%% Config
FsADC = 49152000;
FsCIC = FsADC;
CICDec = 128;
FsFIR = FsCIC / CICDec;
FIRDec = 2;
FsOut = FsFIR / FIRDec;

Fres = 1000;

f = 0 : (Fres/FsCIC) : (CICDec / 2);

%% CIC
CICOrder = 3;
CICZeroGain = 20 * log10(2 ^ (CICOrder * log2(CICDec))); % Gain due to bit growth
CICResp = 20 .* log10(abs(sin(pi .* f) ./ sin(pi .* (f ./ CICDec))) .^ CICOrder) - CICZeroGain;

fCIC = f .* FsFIR;

figure('Name', 'CIC response', 'NumberTitle', 'off');
subplot(3, 1, 1);
plot(fCIC, CICResp);
axis([0 (FsCIC / 2) -200 0]);
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
title('Up to FsCIC / 2');
subplot(3, 1, 2);
plot(fCIC, CICResp);
axis([0 (FsFIR / 2) -80 2]);
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
title('Up to FsFIR / 2');
subplot(3, 1, 3);
plot(fCIC, CICResp);
axis([0 (FsOut / 2) -10 2]);
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
title('Up to FsOut / 2');

%% FIR
h = fdesign.ciccomp;
set(h, 'NumberOfSections', 3, 'DifferentialDelay', 1);
FIR = design(h, 'equiripple', 'SystemObject', true);
FIR = coeffs(FIR);
FIR = FIR.Numerator;

FIRResp = freqz(FIR, 1, (FsCIC/Fres) / 2);
FIRResp = 20 .* log10(FIRResp .');

FIRPlusCICResp = CICResp(1:length(FIRResp)) + FIRResp;

fFIR = fCIC(1:length(FIRResp));

figure('Name', 'FIR response', 'NumberTitle', 'off');
subplot(2, 1, 1);
plot(fFIR, FIRResp, fFIR, FIRPlusCICResp);
legend("FIR", "FIR + CIC");
axis([0 (FsFIR / 2) -80 2]);
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
title('Up to FsFIR / 2');
subplot(2, 1, 2);
plot(fFIR, FIRResp, fFIR, FIRPlusCICResp, fFIR, ones([1 length(fFIR)]) .* -3);
legend("FIR", "FIR + CIC", "-3 dB");
axis([0 (FsOut / 2) -20 2]);
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
title('Up to FsOut / 2');

%% Dump coefficients
outfile = fopen('baseband_filter.h', 'w');
fprintf(outfile, 'static const uint32_t baseband_filter_taps_size = %u;\n', length(FIR));
fprintf(outfile, 'static const int16_t baseband_filter_taps[] = {');
for i = 1 : length(FIR) - 1
    fprintf(outfile, '\n    %hi,', int16(FIR(length(FIR) - i + 1) * 32767));
end
fprintf(outfile, '\n    %hi', int16(FIR(1) * 32767));
fprintf(outfile, '\n};');
