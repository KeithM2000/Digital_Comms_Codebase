function beamwidth = Parabolic_Beamwidth(f, s, r)
%Parabolic_Beamwidth: returns the beamwidth of a parabolic dish of radius r
%   f: transmitting frequency, in Hertz
%   S: speed of signal, given in meters per second
%   r: radius of dish, in meters

area = pi*r*r;
lin_gain = Antenna_Gain(area, f, s);
beamwidth = 4/sqrt(lin_gain);
end