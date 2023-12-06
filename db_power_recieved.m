function db_recieved = db_power_recieved(transmit_gain, recieve_gain, transmit_power_watts, frequency, speed, distance)
Tdb = 10*log10(transmit_gain);
Pdb = 10*log10(transmit_power_watts);
Rdb = 10*log10(recieve_gain);
lmbd = speed/frequency;
path_loss_db = 20*log10(lmbd/(4*pi*distance));
db_recieved = Tdb+Pdb+Rdb+path_loss_db;
end