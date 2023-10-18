function L_per = L_prime_2wire(s, d1, d2, mu_r)
num = mu_r*2*(10^-7);
term = 4*(s^2) - ((d1^2) + (d2^2));
term = term/(2*d1*d2);
L_per = num*acosh(term);
end