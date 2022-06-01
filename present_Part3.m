function present_Part3(x, title1, x_downsamp_interp, title2, x_interp_downsamp, title3)

    subplot(3, 1, 1);
    DFTx = repmat(fft(x, 1024), 2);
    DFTx = abs(fftshift(DFTx));
    w = (-length(DFTx)/2:length(DFTx)/2-1)*(2*pi)/length(DFTx);
    plot(w, DFTx, "color", "b");
    title(title1);
    xlabel('\omega');
    ylabel('X(e^{j\omega})');
    hold on;

    subplot(3, 1, 2);
    DFTx_downsamp_interp = repmat(fft(x_downsamp_interp, 1024), 2);
    DFTx_downsamp_interp = abs(fftshift(DFTx_downsamp_interp));
    w = (-length(DFTx_downsamp_interp)/2:length(DFTx_downsamp_interp)/2-1)*(2*pi)/length(DFTx_downsamp_interp);
    plot(w, DFTx_downsamp_interp, "color", "b");
    title(title2);
    xlabel('\omega');
    ylabel('X_{di}(e^{j\omega})');
    hold on;

    subplot(3, 1, 3);
    DFTx_interp_downsamp = repmat(fft(x_interp_downsamp, 1024), 2);
    DFTx_interp_downsamp = abs(fftshift(DFTx_interp_downsamp));
    w = (-length(DFTx_interp_downsamp)/2:length(DFTx_interp_downsamp)/2-1)*(2*pi)/length(DFTx_interp_downsamp);
    plot(w, DFTx_interp_downsamp, "color", "b");
    title(title3);
    xlabel('\omega');
    ylabel('X_{id}(e^{j\omega})');
    hold off;
    figure;

end
