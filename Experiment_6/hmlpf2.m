clc;
clear;
close all;

M = 7;
alpha = (M-1)/2;
wc = 3*pi/4;

n = 0:M-1;

hd = sin(wc*(n-alpha))./(pi*(n-alpha));
hd(alpha+1) = wc/pi;

w = hamming(M)';
h = hd .* w;

disp(h)

freqz(h,1)
title('FIR LPF using Hamming Window')
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');