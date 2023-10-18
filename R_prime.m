function R_per = R_prime(Rho, f, mu_r, diam)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sd = Skin_Depth(Rho, f, mu_r);
perim = pi*diam;
area = pi*((diam/2)^2);
Rp_low = Rho/area;
Rp_high = Rho/(sd*perim);
R_per = sqrt(Rp_low^2 + Rp_high^2);
end