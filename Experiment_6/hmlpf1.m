clc; clear;

M=5;
alpha=2;
wc=pi/4;

n=0:M-1;

hd=sin(wc*(n-alpha))./(pi*(n-alpha));
hd(alpha+1)=wc/pi;

h=hd;

disp(h);

freqz(h,1);
title('FIR LPF using Hamming Window')
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');