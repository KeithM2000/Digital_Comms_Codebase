%% 1.B
f = 2.3*10^9;
s = 3*10^8;
area = ((3.7/2)^2)*pi;
gain = Antenna_Gain(area, f, s)

gain_dBi = 10*log10(gain)
%% 1.C
f = 8.4*10^9;
area = ((3.7/2)^2)*pi;
gain = Antenna_Gain(area, f, s)
gain_dBi = 10*log10(gain)

%% 1.D
f = 8.4*10^9;
area = ((70/2)^2)*pi;
gain = Antenna_Gain(area, f, s)
gain_dBi = 10*log10(gain)

%% 5
P = 22.4;
D = 23*10^12;
r_area = ((70/2)^2)*pi;
area = ((3.7/2)^2)*pi;
f = 8.4*10^9;
gain = Antenna_Gain(area, f, s);
power = Antenna_Power_Recieved(P, D, gain, r_area)

dBm_power = 10*log10(power/0.001)

%% 6
P = 22.4;
D = 23*10^12;
r_area = ((70/2)^2)*pi;
area = ((3.7/2)^2)*pi;
f = 2.3*10^9;
gain = Antenna_Gain(area, f, s);
power = Antenna_Power_Recieved(P, D, gain, r_area)

dBm_power = 10*log10(power/0.001)