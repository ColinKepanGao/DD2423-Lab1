office = office256;
add = gaussnoise(office, 16);
sap = sapnoise(office, 0.1, 255);
% subplot(1, 3, 1);
% showgrey(office);
% title('office');
% subplot(1, 3, 2);
% showgrey(add);
% title('gaussnoise(office, 16)');
% subplot(1, 3, 3);
% showgrey(sap);
% title('sapnoise(office, 0.1, 255)');

% t = [0.1, 0.5, 1.0, 5.0, 10.0, 50.0];
% for i = 1 : 6
%     subplot(2, 3, i);
%     showgrey(gaussfft(add, t(i)));
%     title(sprintf('Gaussian Noise - Gaussian Filter t=%f', t(i)));
% end
% t = [0.1, 0.5, 1.0, 5.0, 10.0, 50.0];
% for i = 1 : 6
%     subplot(2, 3, i);
%     showgrey(gaussfft(sap, t(i)));
%     title(sprintf('SaP Noise - Gaussian Filter t=%f', t(i)));
% end

% height = [1, 2, 5, 10, 20, 50];
% for i = 1 : 6
%     subplot(2, 3, i);
%     showgrey(medfilt(add, height(i)));
%     title(sprintf('Gaussian Noise - Median Filter height=%d', height(i)));
% end
% height = [1, 2, 5, 10, 20, 50];
% for i = 1 : 6
%     subplot(2, 3, i);
%     showgrey(medfilt(sap, height(i)));
%     title(sprintf('SaP Noise - Median Filter height=%d', height(i)));
% end

% cutoff = [0.02, 0.05, 0.1, 0.2, 0.5, 1];
% for i = 1 : 6
%     subplot(2, 3, i);
%     showgrey(ideal(add, cutoff(i)));
%     title(sprintf('Gaussian Noise - Ideal Low Passing Filter cutoff=%.2f', cutoff(i)));
% end
% cutoff = [0.02, 0.05, 0.1, 0.2, 0.5, 1];
% for i = 1 : 6
%     subplot(2, 3, i);
%     showgrey(ideal(sap, cutoff(i)));
%     title(sprintf('SaP Noise - Ideal Low Passing Filter cutoff=%.2f', cutoff(i)));
% end

% Question 18 - explanin the grids
x = (-64 : 63);
y = [zeros(1, 48), ones(1, 32), zeros(1, 48)];
% plot(x, y);
plot(x, real(ifft(y)));

