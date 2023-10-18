function sd = Skin_Depth(Rho,f,ur)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sd = sqrt(Rho/(pi*f*ur*(4*pi*0.0000001)));
end

function R_per = R_prime(Rho, f, ur, diam)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sd = Skin_Depth(Rho, f, ur);
perim = pi*diam;
area = pi*((diam/2)^2);
Rp_low = Rho/area;
Rp_high = Rho/(sd*perim);
R_per = sqrt(Rp_low^2 + Rp_high^2);
end

function C_per = C_prime_2wire(s, d1, d2, eps_r)
num = 2*pi*eps_r*8.85*(10^-12);
term = 4*(s^2) - ((d1^2) + (d2^2));
term = term/(2*d1*d2);
den = acosh(term);
C_per = num/den;
end

function L_per = L_prime_2wire(s, d1, d2, mu_r)
num = mu_r*2*(10^-7);
term = 4*(s^2) - ((d1^2) + (d2^2));
term = term/(2*d1*d2);
L_per = num*acosh(term);
end

function C_per = C_prime_ground(s, d, eps_r)
num = 2*pi*eps_r*8.85*(10^-12);
term = (2*(s))/d;
den = acosh(term);
C_per = num/den;
end

function L_per = L_prime_ground(s, d, mu_r)
num = 2*mu_r*(10^-7);
term = (2*(s))/d;
L_per = num*acosh(term);
end

function C_per = C_prime_coax(outside_inner_diam, inside_outer_diam, eps_r)
num = 2*pi*eps_r*8.85*(10^-12);
C_per = num/(log(outside_inner_diam/inside_outer_diam));
end

function L_per = L_prime_coax(outside_inner_diam, inside_outer_diam, mu_r)
num = 2*mu_r*(10^-7);
L_per = num*(log(outside_inner_diam/inside_outer_diam));
end

function z0 = Characteristic_Impedance(r_prime, c_prime, l_prime, g_prime, f)
num = r_prime + 1i*2*pi*f*l_prime;
den = g_prime + 1i*2*pi*f*c_prime;
z0 = sqrt(num/den);
end

function gamma = Propagation_Coefficient(r_prime, c_prime, l_prime, g_prime, f)
num1 = r_prime + 1i*2*pi*f*l_prime;
num2 = g_prime + 1i*2*pi*f*c_prime;
gamma = sqrt(num1*num2);
end
