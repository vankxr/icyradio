clear all    % Clean all constant and variables
close all    % Close all windows
%clf         % Clean the figure window
clc          % Clean the command window
%echo off    % Inhibits the code view in the command window during its execution

%% Config
FsADC = 49152000;
FsCIC = FsADC;
CICDec = 32;
FsFIR = FsCIC / CICDec;
FIRDec = 8;
FsOut = FsFIR / FIRDec;

Fres = 1000;

f = 0 : (Fres/FsCIC) : (CICDec / 2);

%% CIC
CICOrder = 4;
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
%FIROrder = 32;
%FIR = fir1(FIROrder - 1, (FsOut / 2) / (FsFIR / 2), 'low', chebwin(bsz, 30));

FIR = [
-0.016595070996902408
-0.012633535041115399
-0.01538004616486526
-0.01665935734863261
-0.015726387666246535
-0.011927939397513602
-0.004837397620948416
0.005661553452018109
0.019309892411297828
0.03542868066375057
0.05302613816151948
0.07080887112460829
0.08739832259978536
0.10132604664670213
0.11139392113823524
0.11667753120199953
0.11667753120199953
0.11139392113823524
0.10132604664670213
0.08739832259978536
0.07080887112460829
0.05302613816151948
0.03542868066375057
0.019309892411297828
0.005661553452018109
-0.004837397620948416
-0.011927939397513602
-0.015726387666246535
-0.01665935734863261
-0.01538004616486526
-0.012633535041115399
-0.016595070996902408
];

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
outfile = fopen('fir_coeffs.memh', 'w');
fprintf(outfile, '// Coef size (%u)\n', length(FIR));
fprintf(outfile, '%04X\n', typecast(int16(FIR * 32767), 'uint16'));
