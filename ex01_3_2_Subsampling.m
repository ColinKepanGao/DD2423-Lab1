pho = phonecalc256;

N = 3;
for i = 1 : N
    if i == 1
        gau = pho;
        ide = pho;
    end
    if i > 1 
        pho = rawsubsample(pho);
        gau = rawsubsample(gaussfft(pho, 1.8));
        ide = rawsubsample(ideal(pho, 0.2));
    end
%     subplot(3, N, i);
%     showgrey(pho);
%     title(sprintf('rawsubsample for %d times', i-1));
%     subplot(3, N, i+N);
%     showgrey(gau);
%     title(sprintf('sample with gaussian convolution \n for %d times', i-1));
%     subplot(3, N, i+2*N);
%     showgrey(ide);
%     title(sprintf('sample with ideal low pass filter \n for %d times', i-1));
end

for i = 1 : N
    if i == 1
        gau = pho;
        ide = pho;
    end
    if i > 1 
        pho = rawsubsample(pho);
        gau = rawsubsample(gaussfft(pho, 1.8));
        ide = rawsubsample(ideal(pho, 0.2));
    end
    subplot(3, N, i);
    showgrey(pho);
    title(sprintf('rawsubsample for %d times', i+2));
    subplot(3, N, i+N);
    showgrey(gau);
    title(sprintf('sample with gaussian convolution \n for %d times', i+2));
    subplot(3, N, i+2*N);
    showgrey(ide);
    title(sprintf('sample with ideal low pass filter \n for %d times', i+2));
end
