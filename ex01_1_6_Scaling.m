F = [zeros(60, 128); ones(8, 128); zeros(60, 128)] .* ...
    [zeros(128, 48) ones(128, 32) zeros(128, 48)];

subplot(1, 2, 1)
showgrey(F)
title('F')

subplot(1, 2, 2)
showfs(fft2(F))
title('fft2(F)')
