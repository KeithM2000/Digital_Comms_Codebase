function [signal, time] = Return_to_Zero_Signal(input_word,Fs, bitrate)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
samples_per_bit = Fs/bitrate;
signal_length = length(input_word)*samples_per_bit + 1;
signal = zeros(1, signal_length);
prev_index = 1;
    for index = 1:length(input_word)
        next_index = index*samples_per_bit
        if (input_word(index) == 1)
            mid_index = floor((next_index-prev_index)/2) + prev_index;
            signal(prev_index:mid_index) = 1;
            prev_index = mid_index + 1;
        end
        signal(prev_index:next_index) = -1;
        prev_index = next_index+1;
    end
Ts = 1/Fs;
time = (0:(length(signal)-1))*Ts;
end