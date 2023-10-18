function gamma = Propagation_Coefficient(r_prime, c_prime, l_prime, g_prime, f)
num1 = r_prime + 1i*2*pi*f*l_prime;
num2 = g_prime + 1i*2*pi*f*c_prime;
gamma = sqrt(num1*num2);
end
