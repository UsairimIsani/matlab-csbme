

clear all;
close all;
clc;
file_name = ".wav";
[y Fs] = audioread(file_name);

t = 0:1/Fs:length(y)/Fs-1/Fs;

% freq domain
N = length(y);
K = 0:N-1;
f = K*Fs/N;

% filter

figure
subplot(2,1,1);
plot(t,y);
title("Original signal");
xlabel("Time (sec)");
ylabel("Amplitude");

subplot(2,1,2);
plot(f, abs(fft(y)));
title("FFT of original signal")
xlabel("Frequency (Hz)");
xlim([0 Fs/2]);
ylabel("Amplitude");

