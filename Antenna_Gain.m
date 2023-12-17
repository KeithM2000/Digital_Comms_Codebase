function gain= Antenna_Gain(Antenna_area,f, speed)
%Antenna_Gain: Function used to calculate the gain of a parabolic  antenna
%   Antenna_area: area of the antenna in meters
%   f: frequency of transmitted signal in Hertz  
%   speed: speed of signal in meters per second
w_len = speed/f;
iso_area = (w_len^2)/(4*pi);
gain = Antenna_area/iso_area;
end