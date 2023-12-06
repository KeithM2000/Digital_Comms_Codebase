function beamwidth = Parabolic_Beamwidth(f, s, r)
%Beamwidth: returns the beamwidth of a parabolic dish of radius r
%transmitting at f Hertz, the wave travels at speed s
area = pi*r*r;
lin_gain = Antenna_Gain(area, f, s);
beamwidth = 4/sqrt(lin_gain);
end