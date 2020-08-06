clear all    % Clean all constant and variables
close all    % Close all windows
%clf         % Clean the figure window
clc          % Clean the command window
%echo off    % Inhibits the code view in the command window during its execution

%% Config
fs1 = 48000;
fs2 = 192000;
fc = 40000;
fi = 10000;
f1 = 200;
f2 = 2700;

L = 500000;
t1 = 0 : 1/fs1 : L/fs1;
t2 = 0 : 1/fs2 : L/fs1;

%% Generate real baseband
mx = zeros(1, length(t1));

for cf = f1:10:f2
    mx = mx + cos(2 * pi * cf * t1);
end

%% Design and analyze Hilbert FIR
Hd = designfilt('hilbertfir', 'FilterOrder', 200, 'TransitionWidth', 0.02, 'DesignMethod', 'equiripple');
hfv = fvtool(Hd, 'Analysis', 'Magnitude', 'MagnitudeDisplay', 'Zero-phase', 'FrequencyRange', '[-pi, pi)');
hfv.Color = 'white';

%% Filter to generate quadrature, delay
my = filter(Hd, mx);

G = filtord(Hd) / 2;
mx = [zeros(1,G), mx(1:end-G)];

m = mx + j * my;
[M, fM] = fft_spectrum(m(G+1:end), L, fs1);
M = 10 * log10(abs(M));

mx = upsample(mx, fs2 / fs1);
my = upsample(my, fs2 / fs1);

mx = mx(1:end - (fs2 / fs1) + 1);
my = my(1:end - (fs2 / fs1) + 1);

b = fir1(500, (f2 + 5000) / fs2);
mx = filter(b, 1, mx);
my = filter(b, 1, my);

mx = awgn(mx, 30);
my = awgn(my, 30);

m = mx + j * my;
[Mu, fMu] = fft_spectrum(m(G+1:end), L, fs2);
Mu = 10 * log10(abs(Mu));

%% Generate IF carrier
icx = cos(2 * pi * fi * t2);
icy = sin(2 * pi * fi * t2);

%% Mix signal up to IF
ix = mx .* icx - my .* icy;
iy = mx .* icy + my .* icx;

i = ix + j * iy;
[I, fI] = fft_spectrum(i(G+1:end), L, fs2);
I = 10 * log10(abs(I));

%% Generate carrier
cx = cos(2 * pi * fc * t2);
cy = sin(2 * pi * fc * t2);

%% Modulate
sx = cx .* ix;
sy = cy .* iy;

s = sx - sy; % - yields USB, + yields LSB

[S, fS] = fft_spectrum(s(G+1:end), L, fs2);
S = 10 * log10(abs(S));

%% Plot results

figure('Name', 'SSB Modulation', 'NumberTitle', 'off');
subplot(4, 1, 1);
plot(fM, M, [0, 0], [min(M) - 5, max(M) + 5]);
axis([min(fM), max(fM), min(M) - 5, max(M) + 5]);
subplot(4, 1, 2);
plot(fMu, Mu, [0, 0], [min(Mu) - 5, max(Mu) + 5]);
axis([min(fMu), max(fMu), min(Mu) - 5, max(Mu) + 5]);
subplot(4, 1, 3);
plot(fI, I, [fi, fi], [min(I) - 5, max(I) + 5], [0, 0], [min(I) - 5, max(I) + 5]);
axis([min(fI), max(fI), min(I) - 5, max(I) + 5]);
subplot(4, 1, 4);
plot(fS, S, [(fi + fc), (fi + fc)], [min(S) - 5, max(S) + 5], [fc, fc], [min(S) - 5, max(S) + 5], [0, 0], [min(S) - 5, max(S) + 5]);
axis([min(fS), max(fS), min(S) - 5, max(S) + 5]);

%% Dump coefficients
outfile = fopen('hilbert_filter.h', 'w');
fprintf(outfile, 'static const uint32_t hilbert_filter_taps_size = %u;\n', length(Hd.Coefficients));
fprintf(outfile, 'static const int16_t hilbert_filter_taps[] = {');
for i = 1 : length(Hd.Coefficients) - 1
    fprintf(outfile, '\n    %hi,', int16(Hd.Coefficients(length(Hd.Coefficients) - i + 1) * 32767));
end
fprintf(outfile, '\n    %hi', int16(Hd.Coefficients(1) * 32767));
fprintf(outfile, '\n};');
