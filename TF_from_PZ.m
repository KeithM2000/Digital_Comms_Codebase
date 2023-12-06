function [H] = TF_from_PZ(P,Z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
den = [1];
for p = P
    den = conv(den, [1, -p]);
end
num = [1];
for z = Z
    num = conv(num, [1, -z]);
end
H = tf(num, den)
end