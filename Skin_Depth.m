function sd = Skin_Depth(Rho,f,ur)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sd = sqrt(Rho/(pi*f*ur*(4*pi*0.0000001)))
end