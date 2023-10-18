function antenna_length = Fractional_Antenna_Length(f,wavelength_fraction, speed)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
lambda = speed/f;
antenna_length = lambda*wavelength_fraction;
end