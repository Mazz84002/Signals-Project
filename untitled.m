
n = -25:1:26;

x = ((2./n).*sin((n.*pi)./8)).^2;
x(26) = (pi/4)^2;

wp = linspace(0, 2*pi, 512);
wn = linspace(-2*pi, 0, 512);

X = abs(fftshift(fft(x, 512)));
plot(wp, X, wn, X, "color", "b");
figure;


X = abs(fft(x, 512));
plot(wp, X, wn, X, "color", "b");