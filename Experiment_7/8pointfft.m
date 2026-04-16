clc;
clear all;
close all;
fs=1000;
N=8;
n=0:N-1;
x=sin(2*pi*50*n/fs);
xf=fft(x, N);
magx=abs(xf);
f=(0:N-1)*(fs/N);
stem(f, magx);
xlabel("Frq");
ylabel("Mag");
title("Mag spect of 8 point fft");
grid on;
disp("f \ magx ");
disp([f', magx'])