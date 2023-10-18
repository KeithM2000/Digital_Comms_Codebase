function L_per = L_prime_ground(s, d, mu_r)
num = 2*mu_r*(10^-7);
term = (2*(s))/d;
L_per = num*acosh(term);
end