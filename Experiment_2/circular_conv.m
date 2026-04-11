clc;
clear all;
close all;

x=[2 1 2 1];
y=[1 3 5];
N=length(x);
h=cconv(x, y, N);
disp("Circular convolution results:_");
disp(h);
n=0:N-1;
stem(n, h,"g", "LineWidth", 2);
title("Circular convolution");

xlabel("n");
ylabel("Amplitude");