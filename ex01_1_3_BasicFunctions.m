% Fhat = zeros(128, 128);
% Fhat(128, 128) = 1;
% F = ifft2(Fhat);
% 
% Fabsmax = max(abs(F(:)));
% fftwave(125, 1, 128);
% showgrey(real(F), 64, -Fabsmax, Fabsmax);
% showgrey(imag(F), 64, -Fabsmax, Fabsmax);
% showgrey(abs(F), 64, -Fabsmax, Fabsmax);
% showgrey(angle(F), 64, -pi, pi);

% Question 5
fftwave(67, 7, 128);

