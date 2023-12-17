function z0 = Characteristic_Impedance(r_prime, c_prime, l_prime, g_prime, f)
%Characteristic_Impedance: Characteristic Impedance of a transmission line
%   r_prime: resistance per unit length, given in Ohms per meter
%   c_prime: capacitance per unit length, given in Ferads per meter
%   l_prime: inductance per unit length, given in Henries per meter
%   g_prime: leakage per unit length, given in 	Siemens per meter
%   f: frequency of the signal in the transmission line

num = r_prime + 1i*2*pi*f*l_prime;
den = g_prime + 1i*2*pi*f*c_prime;
z0 = sqrt(num/den);
end