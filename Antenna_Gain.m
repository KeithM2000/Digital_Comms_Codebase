function gain= Antenna_Gain(Antenna_area,f, speed)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
w_len = speed/f;
iso_area = (w_len^2)/(4*pi);
gain = Antenna_area/iso_area;
end