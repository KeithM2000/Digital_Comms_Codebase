function [signal, time_arr] = Bit_Signal(input_word,Fs, bitrate)
%Bit_Signal: Generates a Low/High signal representing the string of bits given in input_word
%   input_word: a binary word of arbitrary length
%   Fs: Sampling frequency, given in Hertz
%   bitrate: number of bits per second
samples_per_bit = Fs/bitrate;
signal_length = length(input_word)*samples_per_bit + 1;
signal = zeros(1,signal_length);
prev_index = 1;
    for index = 1:length(input_word)
        next_index = index*samples_per_bit;
        signal(prev_index:next_index) = input_word(index);
        prev_index = next_index+1;
    end
Ts = 1/Fs;
time_arr = (0:(length(signal)-1))*Ts;
end