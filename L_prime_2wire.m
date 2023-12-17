function L_per = L_prime_2wire(s, d1, d2, mu_r)
%L_prime_2wire: Unit inductance of two wires in parallel given in Henries per meter
%   s: distance from center to center of the two wires
%   d1: diameter of wire one
%   d2: diameter of wire two
%   mu_r: relative permeability of the material surounding the two wires

num = mu_r*2*(10^-7);
term = 4*(s^2) - ((d1^2) + (d2^2));
term = term/(2*d1*d2);
L_per = num*acosh(term);
end