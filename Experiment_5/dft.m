% Define the input sequence
x = [0,1,2,3,4,5,6,7];
N = length(x);

% Compute the DFT using the Fast Fourier Transform (FFT) algorithm
Xk = fft(x);

% Display the results in the command window
disp('The DFT coefficients X(k) are:');
disp(Xk);

% Define the input sequence
x = [2,0,0,1];
N = length(x);

% Compute the DFT using the Fast Fourier Transform (FFT) algorithm
Xk = fft(x);

% Display the results in the command window
disp('The DFT coefficients X(k) are:');
disp(Xk);

