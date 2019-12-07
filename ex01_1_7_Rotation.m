F = [zeros(60, 128); ones(8, 128); zeros(60, 128)] .* ...
    [zeros(128, 48) ones(128, 32) zeros(128, 48)];
alpha = 90;
G = rot(F, alpha);

subplot(2, 3, 1);
showgrey(F);
title('F');

subplot(2, 3, 4);
showgrey(G);
title(sprintf('G = rot(F, %d)', alpha));

Fhat = fft2(F);
subplot(2, 3, 2);
showgrey(log(1 + abs(fftshift(Fhat))));
title('log(1 + abs(fftshift(Fhat)))');

Ghat = fft2(G);
subplot(2, 3, 5);
showgrey(log(1 + abs(fftshift(Ghat))));
title('log(1 + abs(fftshift(Ghat)))');

subplot(2, 3, 6);
showgrey(log(1 + abs(rot(fftshift(Ghat), -alpha))));
title(sprintf('log(1 + abs(rot(fftshift(Ghat), -%d)))', alpha));
