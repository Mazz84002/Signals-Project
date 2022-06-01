function y = upsample(x,n)

% upsamples vector x by n
%---------------input-----------------%
% x - signal vector
% n - upsampling rate
%---------------output----------------%
% y - upsampled signal


[len , dim] = max(size(x)) ; 

if (dim==1),
    y = zeros(n * len , 1) ;
else
    y = zeros(1 , n * len) ; 
end

y(1 : n : end) = x ; 