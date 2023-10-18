function C_per = C_prime_ground(s, d, eps_r)
num = 2*pi*eps_r*8.85*(10^-12);
term = (2*(s))/d;
den = acosh(term);
C_per = num/den;
end