function db_recieved = db_power_recieved(transmit_gain, recieve_gain, transmit_power_watts, frequency, speed, distance)
%db_power_recieved: power recieved by reciever in dBW 
%   transmit_gain: gain of transmitter antenna in decibells 
%   recieve_gain: gain of reciever antenna in decibells
%   transmit_power_watts: power of the signal at the transmitter in Watts 
%   frequency: frequency of transmitted signal
%   speed: speed of signal
%   distance: distance from transmitter to reciever 

Tdb = 10*log10(transmit_gain);
Pdb = 10*log10(transmit_power_watts);
Rdb = 10*log10(recieve_gain);
lmbd = speed/frequency;
path_loss_db = 20*log10(lmbd/(4*pi*distance));
db_recieved = Tdb+Pdb+Rdb+path_loss_db;
end