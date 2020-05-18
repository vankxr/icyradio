function [X, f] = fft_spectrum (x, L, Fs)
    X = fft(x, L) / L;
    X = fftshift(X);
    f = Fs * linspace(-0.5, 0.5, L);
end