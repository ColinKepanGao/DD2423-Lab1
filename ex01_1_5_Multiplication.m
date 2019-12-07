F = [zeros(56, 128); ones(16, 128); zeros(56, 128)];
G = F';

% subplot(1, 3, 1);
% showgrey(F);
% title('F');
% 
% subplot(1, 3, 2);
% showgrey(G);
% title('G');
% 
% subplot(1, 3, 3);
% showgrey(F .* G);
% title('F .* G');

% subplot(1, 3, 1);
% showgrey(abs(fft2(F .* G)));
% title('abs(fft2(F.*G))');
% 
% subplot(1, 3, 2);
% showgrey(abs(fftshift(fft2(F .* G))));
% title('abs(fftshift(fft2(F .* G)))');
% 
% subplot(1, 3, 3);
% showfs(fft2(F.*G));
% title('Compressed fft2(F.*G)');

subplot(1, 3, 1)
showgrey(F.*G)
title('F.*G')

subplot(1, 3, 2)
showfs(fft2(F.*G))
title('fft2(F.*G)')

subplot(1, 3, 3)
c = conv2(Fhat, Ghat)/128.^2;
showfs(c(1:128, 1:128));
title('conv2(Fhat, Ghat)/sz.^2')
