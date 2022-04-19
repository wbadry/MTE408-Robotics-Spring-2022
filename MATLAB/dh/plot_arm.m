%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MTE 408 Introduction to Robotics                                        %
% SECTION 5                                                               %
% WALEED ELBADRY                                                          %
% 18/11/2021                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% This script shows how to plot a robot using DH parameters
%% Peter Croke toolbox
clearvars;
clc;
close all % Close all opened figures
figure('name','SECTION 5')

%% Create each link from the table we made
d = 2;
a = 0;
alpha = 0;

L(1) = Link('d',d,'a',a,'alpha',alpha,'revolute','qlim',[0 pi]);

a = 0;
alpha = -pi/2;

L(2) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 3]);

a = 0;
alpha = 0;

L(3) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 3]);

%% Create the arm based on links and display DH table
arm = SerialLink(L,'name','Three-link cylindrical Arm')

%% Show the arm and have sliders for each joint
arm.teach([0 0 0]);