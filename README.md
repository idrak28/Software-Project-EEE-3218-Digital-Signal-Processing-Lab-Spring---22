# Software-Project-EEE-3218-Digital-Signal-Processing-Lab-Spring---22
An audio file ‘final.wav’ which contains combined and overlapping modified sounds of the
instruments - trumpet, piano, violin, and guitar, has been provided. Another file
‘NonOverlapping.wav’ contains the non-overlapping modified sounds of the musical instruments
– guitar, piano, trumpet and violin (in this order). Use “audioread” for audio signal input in
MATLAB. Your task is to achieve the following goals using MATLAB codes:
1) Find the spectrum of each of the instrument’s sound from ‘NonOverlapping.wav’
file and determine the frequency ranges.
2) Find the spectrum of the combined sound signal from ‘final.wav’ file and determine
the frequency range.
3) Design a digital filter that would separate the sound of each instrument from
“final.wav” file. Mention the filter type, filter design methods, filter order, and the
cutoff frequency of the filter.
4) Extract each instrument sound in separate ‘.wav’ file.
5) Closely observe the spectrum of all 4 separated wav-files individually. Can you
suggest any way to pass the individual wav files separately through a channel of
bandwidth 0 to 10 kHz?
6) Send any 2 of the above 4 separated signals through a 2-channel FDM (frequency
division multiplexed) link. Use a carrier of X Hz where X is the last 4 least
significant digits of your 9 digit ID. Choose another carrier cleverly to optimize the
FDM link bandwidth while keeping the signal fidelity as high as possible.
7) The signal extracted from the ‘final.wav’ audio file lacks melody. Can you convert
this into an overlapping yet melodious one with proper synchronization of octaves
using MATLAB code?
