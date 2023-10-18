function C_per = C_prime_coax(outside_inner_diam, inside_outer_diam, eps_r)
num = 2*pi*eps_r*8.85*(10^-12);
C_per = num/(log(outside_inner_diam/inside_outer_diam));
end