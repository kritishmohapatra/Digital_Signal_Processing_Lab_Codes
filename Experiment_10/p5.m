% Problem 5
b = [1 -2*cos(0.6*pi) 1];
a = [1 -0.9 0.81];

[H,w] = freqz(b,a,1024);

figure;
plot(w/pi, abs(H));
grid on;
title('Magnitude Response (Notch Filter)');
xlabel('\omega/\pi'); ylabel('|H|');

figure;
zplane(b,a);
title('Pole-Zero Plot');