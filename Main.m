% ------------ PART 2 -----------------

n = -25:1:26;
    % 1

x = ((2./n).*sin((n.*pi)./8)).^2;
x(26) = (pi/4)^2;

present_signal(x, 'Plot of Signal')


    % 2

x_downsampled = downsample(x, 3);
x_decimated = decimate(x, 3);

present_signal(x_downsampled, 'Downsampled Signal by 3', x_decimated, 'Decimated Signal by 3')

    % 3
x_downsampled = downsample(x, 5);
x_decimated = decimate(x, 5);

present_signal(x_downsampled, 'Downsampled Signal by 5', x_decimated, 'Decimated Signal by 5')

    % 4

x_upsampled = upsample(x, 3);
x_interpolated = interp(x, 3);

present_signal(x_upsampled, 'Upsampled Signal by 3', x_interpolated, 'Interpolated Signal by 3')

    % 5

x_upsampled = upsample(x, 5);
x_interpolated = interp(x, 5);

present_signal(x_upsampled, 'Upsampled Signal by 5', x_interpolated, 'Interpolated Signal by 5')

    % 6
x_resampled = resample(x, 2, 3);

present_signal(x_resampled, 'Rate changed by 2/3');


% ------------ PART 3 -----------------

    % 1

[x, n] = audioread("sin.wav");

    % 2

x_downsamp_interp = interp(downsample(x, 4), 4);

    % 3

x_interp_downsamp = downsample(interp(x, 4), 4);

    % 4

present_Part3(x, 'X(e^{j\omega})', x_downsamp_interp, 'Downsampled then Interpolated X_{di}(e^{j\omega})', x_interp_downsamp, 'Interpolated then Downsampled X_{id}(e^{j\omega})');

    % 6

soundsc(x_downsamp_interp);
soundsc(x_interp_downsamp);

