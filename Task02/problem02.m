clc ;
clear all;
close all;
%samples = [51*44100,58*44100];%range for 
[es1,Fs1]=audioread('final.wav');
N = length(es1); % sample lenth
slength = N/Fs1; % total time span of audio signal
t = linspace(0, N/Fs1, N);
n=0:length(es1)-1;
% time domain plot
figure(1)
plot(t, es1); % plots the audio
title('spectrum of final.wav');
xlabel('Time(s)');
ylabel('Amplitude');
%find the frequencies of the signal
es2=fft(es1);
N=length(es2);
figure(2)
f=(n*Fs1)/N;
stem(f,es2);
xlabel('Frequency (Hz)');
title(' frequencies of final.wav');