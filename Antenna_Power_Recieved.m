function power_recieved = Antenna_Power_Recieved(P_transmit, distance, transmission_gain, reciever_area)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

inv_square = 1/(4*pi*(distance^2));
power_recieved = P_transmit*inv_square*transmission_gain*reciever_area;
end