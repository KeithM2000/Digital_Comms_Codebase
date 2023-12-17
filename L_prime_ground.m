function L_per = L_prime_ground(s, d, mu_r)
%L_prime_2wire: Unit inductance of a wire in parallel with a ground plate, given in Henries per meter
%   s: distance from center of wire to ground plate
%   d: diameter of wire
%   mu_r: relative permeability of the material surounding the wire

num = 2*mu_r*(10^-7);
term = (2*(s))/d;
L_per = num*acosh(term);
end