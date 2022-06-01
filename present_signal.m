function present_signal(x1, title1, x2, title2)
    if (nargin == 2)
        subplot(2, 1, 1);
        stem(x1);
        xlabel('n');
        ylabel('x_1[n]');
        title(sprintf('%c', title1));

        subplot(2, 1, 2);
        X1 = abs(repmat(fft(x1, 1024), 2));
        w = (-length(X1)/2:length(X1)/2-1)*(2*pi)/length(X1);
        plot(w, fftshift(X1), "color", "b");
        xlabel('\omega');
        ylabel('X_1(e^{j\omega})');
        hold off;
        figure;
    else
        subplot(2, 2 ,1);
        stem(x1);
        xlabel('n');
        ylabel('x_1[n]');
        title(sprintf('%c', title1));

        subplot(2, 2, 3);
        X1 = abs(repmat(fft(x1, 1024), 2));
        w = (-length(X1)/2:length(X1)/2-1)*(2*pi)/length(X1);
        plot(w, fftshift(X1), "color", "b");
        xlabel('\omega');
        ylabel('X_1(e^{j\omega})');
        hold on;

        subplot(2, 2 ,2);
        stem(x2);
        xlabel('n');
        ylabel('x_2[n]');
        title(sprintf('%c', title2));
        
        subplot(2, 2, 4);
        X2 = abs(repmat(fft(x2, 1024), 2));
        w = (-length(X2)/2:length(X2)/2-1)*(2*pi)/length(X2);
        plot(w, fftshift(X2), "color", "b");
        xlabel('\omega');
        ylabel('X_2(e^{j\omega})');
        hold off;
        figure;
    end
    
end
