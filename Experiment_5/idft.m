% Define the input sequence
x = [255, 48.63+166i, -51+102i, -78.63+46.05i,-85,-78.63-46.05i,-51-102i,48.63-166i];
N = length(x);

% Compute the IDFT 
Xn = ifft(x);

% Display the results in the command window
disp('The IDFT coefficients X(k) are:');
disp(Xn);


% Define the input sequence
x = [3, 2+1i, 1, 2-1i];
N = length(x);

% Compute the IDFT 
 
Xn = ifft(x);

% Display the results in the command window
disp('The IDFT coefficients X(k) are:');
disp(Xn);

