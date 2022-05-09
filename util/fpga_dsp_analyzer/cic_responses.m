clear all    % Clean all constant and variables
close all    % Close all windows
%clf         % Clean the figure window
clc          % Clean the command window
%echo off    % Inhibits the code view in the command window during its execution

CICDec = 8;

n = 500e3;

f = linspace(0, CICDec / 2, n);

CICOrder = 3;
CICZeroGain = 20 * log10(2 .^ (CICOrder * log2(CICDec))); % Gain due to bit growth
CICResp = 20 .* log10(abs(sin(pi .* f) ./ sin(pi .* (f ./ CICDec))) .^ CICOrder) - CICZeroGain;

CICOrder = 4;
CICZeroGain1 = 20 * log10(2 .^ (CICOrder * log2(CICDec))); % Gain due to bit growth
CICResp1 = 20 .* log10(abs(sin(pi .* f) ./ sin(pi .* (f ./ CICDec))) .^ CICOrder) - CICZeroGain1;

CICOrder = 5;
CICZeroGain2 = 20 * log10(2 .^ (CICOrder * log2(CICDec))); % Gain due to bit growth
CICResp2 = 20 .* log10(abs(sin(pi .* f) ./ sin(pi .* (f ./ CICDec))) .^ CICOrder) - CICZeroGain2;

fCIC = f .* 1 / CICDec;

plot(fCIC, CICResp, fCIC, CICResp1, fCIC, CICResp2);
grid on;
axis([0 (1 / 2) -160 5]);
xlabel("Normalized Frequency");
ylabel("Magnitude (dB)");
legend("M = 3", "M = 4", "M = 5");