%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MTE 408 Introduction to Robotics                                        %
% SECTION 6                                                               %
% WALEED ELBADRY                                                          %
% 04/12/2021                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% This script shows how to plot a robot using DH parameters
%% Peter Croke toolbox
clearvars;
clc;
close all % Close all opened figures
figure('name','SECTION 6')

%% Create each link from the table we made
d = 2;
a = 0;
alpha = 0;

L(1) = Link('d',d,'a',a,'alpha',alpha,'revolute','qlim',[0 pi]);

a = 0;
alpha = -pi/2;

L(2) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 10]);

a = 0;
alpha = 0;

L(3) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 10]);

d = 0;
a = 0;
alpha = -pi/2;

L(4) = Link('d',d,'a',a,'alpha',alpha,'revolute','qlim',[0 pi]);

d = 0;
a = 0;
alpha = pi/2;

L(5) = Link('d',d,'a',a,'alpha',alpha,'revolute','qlim',[0 pi]);

a = 0;
alpha = 0;

L(6) = Link('a',a,'alpha',alpha,'revolute','qlim',[0 pi]);

%% Create the arm based on links and display DH table
arm = SerialLink(L,'name','Full Arm')

%% Show the arm and have sliders for each joint
%arm.teach([0 0 0 0 0 0]);

arm.fkine([0 5 5 0 0 0])
arm.plot([0 5 5 0 0 0])
