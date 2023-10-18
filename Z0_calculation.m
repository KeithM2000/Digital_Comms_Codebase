%HW5 p1
ep_r = 2.25; %approximate relative permitivity of polyethylene
mu_r = 1; %relative permiability of polyethylene
wire_width = 0.000511; %from AWG wiki
c_to_c = 2*0.000245 + wire_width; % center to center distance
f = 10^8; %approximate highest frequency needed for 10Mbps connection
Rho = 	1.68*10^-8; %from wiki
Rp = R_prime(Rho, f, mu_r, wire_width);
Gp= 0;
Lp = L_prime_2wire(c_to_c, wire_width, wire_width, mu_r);
Cp = C_prime_2wire(c_to_c, wire_width, wire_width, ep_r);
Z0 = Characteristic_Impedance(Rp, Cp, Lp, Gp, f)
