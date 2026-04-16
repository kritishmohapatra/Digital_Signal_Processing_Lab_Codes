% Problem 6
b = [0.5 1];
a = [1 0.5];

[H,w] = freqz(b,a,1024);

figure;
subplot(2,1,1);
plot(w/pi, abs(H)); grid on;
title('Magnitude Response (All-Pass)');
xlabel('\omega/\pi'); ylabel('|H|');


subplot(2,1,2);
plot(w/pi, unwrap(angle(H))); grid on;
title('Phase Response');
xlabel('\omega/\pi'); ylabel('phase');


figure;
zplane(b,a);
title('Pole-Zero Plot');