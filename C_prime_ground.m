function C_per = C_prime_ground(s, d, eps_r)
%C_prime_ground: Unit capacitance of a wire in parallel with a ground plane
%   s: height of the center of the wire above the ground plane
%   d: diameter of the wire
%   eps_r: relative permitivity of the material between the wire and ground

num = 2*pi*eps_r*8.85*(10^-12);
term = (2*(s))/d;
den = acosh(term);
C_per = num/den;
end