% Problem 1
b = [1];
a = [1 -0.7];

[H,w] = freqz(b,a,1024);

figure;
subplot(2,1,1);
plot(w/pi, abs(H)); grid on;
title('Magnitude Response');
xlabel('\omega/\pi'); ylabel('|H|');

subplot(2,1,2);
plot(w/pi, unwrap(angle(H))); grid on;
title('Phase Response');
xlabel('\omega/\pi'); ylabel('Phase');

figure;
zplane(b,a);
title('Pole-Zero Plot');