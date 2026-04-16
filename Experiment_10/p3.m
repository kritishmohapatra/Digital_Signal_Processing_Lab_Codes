% Problem 3
b = [1];
a = [1 -1.6*cos(0.4*pi) 0.64];

[H,w] = freqz(b,a,1024);

figure;
plot(w/pi, abs(H));
grid on;
title('Magnitude Response');
xlabel('\omega/\pi'); ylabel('|H|');

figure;
zplane(b,a);
title('Pole-Zero Plot');