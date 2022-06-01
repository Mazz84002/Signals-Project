function y = downsample(x,n)
% downsamples vector x by n
% input:
% x - signal
% n - downsampling rate
% output: 
% y - downsampled signal
%
y = x(1:n:end);