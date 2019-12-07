% pho = phonecalc128;
% subplot(1, 3, 1);
% showgrey(pho);
% title('Origin phonecalc128');
% subplot(1, 3, 2)
% showgrey(pow2image(pho, 10e-5));
% title('pow2image(pho, 10e-5)')
% subplot(1, 3, 3);
% showgrey(randphaseimage(pho));
% title('randphaseimage(pho)')

% few = few128;
% subplot(1, 3, 1);
% showgrey(few);
% title('Origin few128');
% subplot(1, 3, 2)
% showgrey(pow2image(few, 10e-5));
% title('pow2image(few, 10e-5)')
% subplot(1, 3, 3);
% showgrey(randphaseimage(few));
% title('randphaseimage(few)')

nal = nallo128;
subplot(1, 3, 1);
showgrey(nal);
title('Origin nallo128');
subplot(1, 3, 2)
showgrey(pow2image(nal, 10e-5));
title('pow2image(nal, 10e-5)')
subplot(1, 3, 3);
showgrey(randphaseimage(nal));
title('randphaseimage(nal)')