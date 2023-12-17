function gamma = Propagation_Coefficient(r_prime, c_prime, l_prime, g_prime, f)
%Propagation_Coefficient: Propagation Coefficient (attenuation constant + j*phase constant) of a transmission medium
%   r_prime: resistance per unit length, given in Ohms per meter
%   c_prime: capacitance per unit length, given in Ferads per meter
%   l_prime: inductance per unit length, given in Henries per meter
%   g_prime: leakage per unit length, given in 	Siemens per meter
%   f: frequency of the signal in the transmission medium

num1 = r_prime + 1i*2*pi*f*l_prime;
num2 = g_prime + 1i*2*pi*f*c_prime;
gamma = sqrt(num1*num2);
end
