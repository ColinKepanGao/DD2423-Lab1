function output = gaussfft(image, t)

    [sizex, sizey] = size(image);
    
    [x, y] = meshgrid(-sizex / 2 : sizex / 2 - 1, -sizey / 2 : sizey / 2 - 1);
    G = 1 / (2 * pi * t) * exp(-(x .* x + y .* y) / (2 * t));
    
    Fhat = fft2(image);
    Ghat = fft2(G);
    Hhat = Fhat .* Ghat;
    output = fftshift(ifft2(Hhat));

end
