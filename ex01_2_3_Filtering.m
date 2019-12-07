% % Question 14 & 15
% t=[0.1,0.3,1.0,10.0,100.0];
% cov={};
% for i = 1 : 5
%     subplot(2, 3, i)
%     psf = gaussfft(deltafcn(128,128),t(i));
%     showgrey(psf);
%     title(sprintf('t = %.1f', t(i)));
%     cov{i} = variance(psf);
% end

% Question 16
% image = phonecalc128;
image = few128;
% image = nallo128;
subplot(2, 3, 1);
showgrey(image);
title('image');
subplot(2, 3, 2);
showgrey(gaussfft(image, 1.0));
title('gaussfft(image, 1.0)');
subplot(2, 3, 3);
showgrey(gaussfft(image, 4.0));
title('gaussfft(image, 4.0)');
subplot(2, 3, 4);
showgrey(gaussfft(image, 16.0));
title('gaussfft(image, 16.0)');
subplot(2, 3, 5);
showgrey(gaussfft(image, 64.0));
title('gaussfft(image, 64.0)');
subplot(2, 3, 6);
showgrey(gaussfft(image, 256.0));
title('gaussfft(image, 256.0)');
