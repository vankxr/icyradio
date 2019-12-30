clear all    % Clean all constant and variables
close all    % Close all windows
%clf         % Clean the figure window
clc          % Clean the command window
%echo off    % Inhibits the code view in the command window during its execution

Fs = 49152000 / 32;
Fc = 96000;

bsz = 32;

b = fir1(bsz - 1, Fc / (Fs / 2), 'low', chebwin(bsz, 30));

c = [-0.012965203242283046
    -0.011063871437052475
    -0.01381052731749904
    -0.015174998393263523
    -0.014304418426721774
    -0.010437916541926103
    -0.0030255457156377723
    0.008138484218759226
    0.022842199498899863
    0.040437877521881924
    0.05982878524618375
    0.07957268463660754
    0.09807546328765063
    0.11371708778573901
    0.12503434029423857
    0.13098661349220492
    0.13098661349220492
    0.12503434029423857
    0.11371708778573901
    0.09807546328765063
    0.07957268463660754
    0.05982878524618375
    0.040437877521881924
    0.022842199498899863
    0.008138484218759226
    -0.0030255457156377723
    -0.010437916541926103
    -0.014304418426721774
    -0.015174998393263523
    -0.01381052731749904
    -0.011063871437052475
    -0.012965203242283046];

figure('Name', 'fit1 response', 'NumberTitle', 'off');
freqz(b, 1);
figure('Name', 'TFilter response', 'NumberTitle', 'off');
freqz(c, 1);

outfile = fopen('fir_coeffs.memh', 'w');
fprintf(outfile, '// Coef size (%u)\n', bsz);
fprintf(outfile, '%04X\n', typecast(int16(b * 32767), 'uint16'));