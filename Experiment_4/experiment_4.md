## Prop of DFT
``` matlab
clc;
clear all;
close all;
%% Linearity
x1=[1,2,3,4];
x2=[2,3,4,5];
a=2;
b=3;
lhs=fft(a*x1+b*x2);
rhs=a*fft(x1)+b*fft(x2);
disp("Linearity:--");
disp(lhs);
disp(rhs);

%% Time Reversal
x=[4,5,6, 7];
n=length(x);
x_rev=[x(1): fliplr(x(2:end))];
x_rev_f=fft(x_rev);
disp("Time reversal:__");
disp(x_rev);
disp("Fft of x_rev");
disp(x_rev_f);

%% Circular shift
x_s=[4, -4, 5, -5];
m=2;
x_sd=circshift(x_s, [0,m]);
x_sh_f=fft(x_sd);
disp("Circular shift:___");
disp(x_sh_f)

%% periodicity
x=[4, 5, 6, 7];
x_f=fft(x);
disp("Periodicity:---");
disp([x_f', x']);

%% parseval's theorem
x=[0, 0.707, 1,0.707];
n=length(x);
xf=fft(x);
e_t=sum(abs(xf).^2);
e_f=(1/n)*sum(abs(xf).^2);
disp("Energy time");
disp(e_t);
disp("Energy freq");
disp(e_f);

%% Circular conv
x1=[1, 2, 3, 4];
x2=[2, 3, 4, 5];
y=cconv(x1, x2, 4);
disp("Circular conv:--");
disp(y);
```

## output
``` matlab
Linearity:--
  62.0000 + 0.0000i -10.0000 +10.0000i -10.0000 + 0.0000i -10.0000 -10.0000i

  62.0000 + 0.0000i -10.0000 +10.0000i -10.0000 + 0.0000i -10.0000 -10.0000i


 
Time reversal:__
     4     5     6     7

Fft of x_rev
  22.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 + 0.0000i  -2.0000 - 2.0000i

Circular shift:___
   0.0000 + 0.0000i   1.0000 + 1.0000i  18.0000 + 0.0000i   1.0000 - 1.0000i

Periodicity:---
  22.0000 + 0.0000i   4.0000 + 0.0000i
  -2.0000 - 2.0000i   5.0000 + 0.0000i
  -2.0000 + 0.0000i   6.0000 + 0.0000i
  -2.0000 + 2.0000i   7.0000 + 0.0000i

Energy time
    7.9988

Energy freq
    1.9997

Circular conv:--
    36    38    36    30
```