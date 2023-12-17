function [H] = TF_from_PZ(P,Z,k)
%TF_from_PZ: Transfer Function from poles and zeros, outputs a Transfer function derived from given poles, zeros, and linear gain
%   P: Matrix of Pole locations
%   Z: Matrix of Zero locations
%   k: linear gain of function 

den = [1];
for p = P
    den = conv(den, [1, -p]);
end
num = [1];
for z = Z
    num = conv(num, [1, -z]);
end
num = k*num
H = tf(num, den)
end