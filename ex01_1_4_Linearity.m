F = [zeros(56, 128); ones(16, 128); zeros(56, 128)];
G = F';
H = F + 2 * G;
Fhat = fft2(F);
Ghat = fft2(G);
Hhat = fft2(H);
Fhatlog = log(1 + abs(Fhat));
% subplot(1, 3, 1);
% showgrey(log(1 + abs(Fhat)));
% title('F');
% 
% subplot(1, 3, 2);
% showgrey(G);
% title('G');
% 
% subplot(1, 3, 3);
% showgrey(H);
% title('H');

% subplot(1, 3, 1);
% showgrey(log(1 + abs(Fhat)));
% title('log(1 + abs(Fhat)))');
% 
% subplot(1, 3, 2);
% showgrey(log(1 + abs(Ghat)));
% title('log(1 + abs(Ghat))');
% 
% subplot(1, 3, 3);
% showgrey(log(1 + abs(Hhat)));
% title('log(1 + abs(Hhat))');

subplot(1, 3, 1);
showgrey(fftshift(log(1 + abs(Fhat))));
title('fftshift(log(1 + abs(Fhat)))');

subplot(1, 3, 2);
showgrey(fftshift(log(1 + abs(Ghat))));
title('fftshift(log(1 + abs(Ghat)))');

subplot(1, 3, 3);
showgrey(fftshift(log(1 + abs(Hhat))));
title('fftshift(log(1 + abs(Hhat)))');
