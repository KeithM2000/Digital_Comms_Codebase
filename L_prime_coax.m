function L_per = L_prime_coax(outside_inner_diam, inside_outer_diam, mu_r)
num = 2*mu_r*(10^-7);
L_per = num*(log(outside_inner_diam/inside_outer_diam));
end