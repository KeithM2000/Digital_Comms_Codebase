function L_per = L_prime_coax(outside_inner_diam, inside_outer_diam, mu_r)
%L_prime_coax: Unit inductance of Coaxial cable given in Henries per meter
%   outside_inner_diam: inside diameter of the outer conductor
%   inside_outer_diam: diameter of the inner conductor
%   mu_r: relative permeability of the material between the two conductors

num = 2*mu_r*(10^-7);
L_per = num*(log(outside_inner_diam/inside_outer_diam));
end