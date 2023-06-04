clc;
clear all; 
close all;
[es1,Fs1]=audioread('final.wav');
%% low pass FIR filter
TW = 0.11;
PBE = 2000;
M1=1000;
corner = PBE+TW/2;
wn = 2*corner/Fs1;
a1 = fir1(M1, wn, 'low', hamming(M1+1));
%% Filtering the Audio Data
filtered_audio_data_1 = filter(a1,1,es1) ;
audiowrite('output1.wav',filtered_audio_data_1 ,Fs1);
%% FIR Bandpass  filter 1
Fs = Fs1;
TW = 100;
PBE1 = 2000;
PBE2 = 5000;
delf = TW/Fs;
M2 = round(5.5/delf);
corner1 = PBE1+TW/2;
corner2 = PBE2+TW/2;
wn1 = 2*corner1/Fs;
wn2 = 2*corner2/Fs;
wn=[wn1,wn2];
a2= fir1(M2, wn, 'bandpass', blackman(M2+1));
%% Filtering the Audio Data
filtered_audio_data_2 = filter(a2,1,es1) ;
audiowrite('output2.wav',filtered_audio_data_2,Fs1);
%% FIR Band pass filter 2
TW3 = 100;
PBE31 = 5000;
PBE32 = 10000;
delf3 = TW3/Fs;
M3 = round(5.5/delf3);
corner31 = PBE31+TW3/2;
corner32 = PBE32+TW3/2;
wn31 = 2*corner31/Fs;
wn32 = 2*corner32/Fs;
wn3=[wn31,wn32];
a3= fir1(M3, wn3, 'bandpass', blackman(M3+1));
%% Filtering the Audio Data
filtered_audio_data_3 = filter(a3,1,es1) ;
audiowrite('output3.wav',filtered_audio_data_3,Fs1);
%% FIR Band pass filter 
TW4 = 100;
PBE41 = 14000;
PBE42 = 16000;
delf4 = TW3/Fs;
M4 = round(5.5/delf4);
corner41 = PBE41+TW4/2;
corner42 = PBE42+TW4/2;
wn41 = 2*corner41/Fs;
wn42 = 2*corner42/Fs;
wn4=[wn41,wn42];
a4= fir1(M4, wn4, 'bandpass', blackman(M4+1));
%% Filtering the Audio Data
filtered_audio_data_4 = filter(a4,1,es1) ;
audiowrite('output4.wav',filtered_audio_data_4,Fs1);
