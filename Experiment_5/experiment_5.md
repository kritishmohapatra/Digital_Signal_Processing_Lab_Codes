## DFT
``` matlab
% Define the input sequence
x = [2,0,0,1];
N = length(x);

% Compute the DFT using the Fast Fourier Transform (FFT) algorithm
Xk = fft(x);

% Display the results in the command window
disp('The DFT coefficients X(k) are:');
disp(Xk);


```
``` matlab
The DFT coefficients X(k) are:
   3.0000 + 0.0000i   2.0000 + 1.0000i   1.0000 + 0.0000i   2.0000 - 1.0000i


```
``` matlab
% Define the input sequence
x = [0,1,2,3,4,5,6,7];
N = length(x);

% Compute the DFT using the Fast Fourier Transform (FFT) algorithm
Xk = fft(x);

% Display the results in the command window
disp('The DFT coefficients X(k) are:');
disp(Xk);


```
```matlab
The DFT coefficients X(k) are:
  Columns 1 through 6

  28.0000 + 0.0000i  -4.0000 + 9.6569i  -4.0000 + 4.0000i  -4.0000 + 1.6569i  -4.0000 + 0.0000i  -4.0000 - 1.6569i

  Columns 7 through 8

  -4.0000 - 4.0000i  -4.0000 - 9.6569i

```

# IDFT
``` matlab
% Define the input sequence
x = [255, 48.63+166i, -51+102i, -78.63+46.05i,-85,-78.63-46.05i,-51-102i,48.63-166i];
N = length(x);

% Compute the IDFT 
Xn = ifft(x);

% Display the results in the command window
disp('The IDFT coefficients X(k) are:');
disp(Xn);


```

``` matlab
The IDFT coefficients X(k) are:
    1.0000    2.0111    4.0125    8.0179   16.0000   31.9889   63.9875  127.9821

```

``` matlab
% Define the input sequence
x = [3, 2+1i, 1, 2-1i];
N = length(x);

% Compute the IDFT 
 
Xn = ifft(x);

% Display the results in the command window
disp('The IDFT coefficients X(k) are:');
disp(Xn);


```

``` matlab
The IDFT coefficients X(k) are:
     2     0     0     1
```
