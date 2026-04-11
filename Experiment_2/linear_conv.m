clc;
clear all;
close all;

x=[2 1 2 1];
y=[1 3 5];
N=length(x);
h=conv(x, y);
disp("Linear convolution results:_");
disp(h);
n=0:length(h)-1;
stem(n, h,"r", "LineWidth", 2);
title("Linear convolution");
xlabel("n");
ylabel("Amplitude");