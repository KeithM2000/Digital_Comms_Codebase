function antenna_length = Fractional_Antenna_Length(f,wavelength_fraction, speed)
%Fractional_Antenna_Length: reterns the optimal length of a monopole, half wave dipole, quarter wave dipole, etc antenna in meters
%   f: transmission frequency in Hertz
%   wavelength_fraction: defines the type of antenna, half wave, quarter wave, etc. given as a Fractional_Antenna_Length
%   speed: speed of the transmission

lambda = speed/f;
antenna_length = lambda*wavelength_fraction;
end