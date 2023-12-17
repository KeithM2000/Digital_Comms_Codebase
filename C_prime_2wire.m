function C_per = C_prime_2wire(s, d1, d2, eps_r)
%C_prime_2wire: Unit capacitance of two wires in parallel given in Farads per meter
%   s: distance from center to center of the two wires
%   d1: diameter of wire one
%   d2: diameter of wire two
%   eps_r: relative permitivity of the material surounding the two wires

num = 2*pi*eps_r*8.85*(10^-12);
term = 4*(s^2) - ((d1^2) + (d2^2));
term = term/(2*d1*d2);
den = acosh(term);
C_per = num/den;
end
