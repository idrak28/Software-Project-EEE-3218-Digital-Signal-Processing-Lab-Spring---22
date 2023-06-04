clc;
close all;
clear all;
[es1,Fs1]=audioread('output4.wav');
Ts=1/Fs1;
N = length(es1); % sample lenth
slength = N/Fs1; % total time span of audio signal
t = linspace(0, N/Fs1, N);
n=0:length(es1)-1;
%frequencies Plot
es2=fft(es1);
N=length(es2);
figure(2)
f=(n*Fs1)/N;
stem(f,es2); 
xlabel('Frequency (Hz)');
title(' frequencies of output4.wav');
