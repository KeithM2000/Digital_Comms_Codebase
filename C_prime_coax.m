function C_per = C_prime_coax(outside_inner_diam, inside_outer_diam, eps_r)
%C_prime_coax: Unit capacitance of Coaxial cable given in Farads per meter
%   outside_inner_diam: iner diameter of the outer conductor
%   inside_outer_diam: diameter of the inner conductor
%   eps_r: relative permitivity of the material between the two conductors

num = 2*pi*eps_r*8.85*(10^-12);
C_per = num/(log(outside_inner_diam/inside_outer_diam));
end