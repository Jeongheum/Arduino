clc
clear all
close all
delete(instrfindall)

s=serial('COM4'); // the same port number with Arduino
set(s,'BaudRate', 115200); // BaudRate shall be the same with Arduino

fopen(s);

figure(1)
subplot 311
title('yaw')
subplot 312
title('pitch')
subplt 313
title('roll')

Yaw(1) = str2double(fscanf(s));
Pitch(1) = str2double(fscanf(s));
Roll(1) = str2double(fscanf(s));
