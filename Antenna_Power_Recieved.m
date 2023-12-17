function power_recieved = Antenna_Power_Recieved(P_transmit, distance, transmission_gain, reciever_area)
%Antenna_Power_Recieved: Power in Watts a parabolic antenna reciever collects from a source
%   P_transmit: Power of the signal at the transmitter in Watts
%   distance: distance from transmitter to reciever
%   transmission_gain: gain of the transmitter antenna
%   reciever_area: area of parabolic reciever antenna

inv_square = 1/(4*pi*(distance^2));
power_recieved = P_transmit*inv_square*transmission_gain*reciever_area;
end