clc;
clear all; 
close all;
%% FDM multiplexer 
fc1=5121;
[m,fs1]=audioread('output1.wav');
[n,fs2]=audioread('output2.wav');
t1=[1:length(m)]';
ct1=cos(2*pi*fc1*t1);
Xfdm1 = m.*ct1;
Xfdm_fft1=abs(fft(Xfdm1));
figure 
stem(Xfdm_fft1);
title('frequency domain Mulitplexed signal 1');
xlabel('Frequency');
ylabel('Amplitude');
%chosse another carrier
fc2=6000;
t2=[1:length(n)]';
ct2=cos(2*pi*fc2*t2);
Xfdm2 = n.*ct2;
Xfdm_fft2=abs(fft(Xfdm2));
figure 
stem(Xfdm_fft2);
title('frequency domain Mulitplexed signal 2');
xlabel('Frequency');
ylabel('Amplitude');
figure
stem(Xfdm_fft1+Xfdm_fft2);
title('frequency domain Mulitplexed sum of both  signal ');
xlabel('Frequency');