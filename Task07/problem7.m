clc;
close all;
clear all;
[es1,Fs1]=audioread('output1.wav');
[es2,Fs2]=audioread('output2.wav');
[es3,Fs3]=audioread('output3.wav');
[es4,Fs4]=audioread('output4.wav');

final=es1+es2+es3+es4;
%% convertthis into an overlapping yet melodious ...
... one with proper synchronization of octaves

audiowrite('mFinal.wav',final,Fs1);
sound(final,Fs1)