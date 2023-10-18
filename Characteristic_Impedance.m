function z0 = Characteristic_Impedance(r_prime, c_prime, l_prime, g_prime, f)
num = r_prime + 1i*2*pi*f*l_prime;
den = g_prime + 1i*2*pi*f*c_prime;
z0 = sqrt(num/den);
end