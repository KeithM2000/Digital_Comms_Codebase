function C_per = C_prime_2wire(s, d1, d2, eps_r)
num = 2*pi*eps_r*8.85*(10^-12);
term = 4*(s^2) - ((d1^2) + (d2^2));
term = term/(2*d1*d2);
den = acosh(term);
C_per = num/den;
end
