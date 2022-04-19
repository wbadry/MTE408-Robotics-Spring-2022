%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MTE 408 Introduction to Robotics                                        %
% SECTION 3                                                               %
% WALEED ELBADRY                                                          %
% 07/11/2021                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% This script shows how to verify the translation example using 
%% Peter Croke toolbox
clearvars;
clc;
figure('name','SECTION 3 - EXAMPLE 1')

%% Given
Bp  = [2,4];
thZ = 0;

%% Create {A} and {B} Coordinates
%% Frame {A}
TA = SE2(0,0,0);
disp('Frame A Transformation Matrix:')
TA.T

% Plot it
trplot2(TA,'frame','A','color','black');
%axis auto
%% Keep plotting on the same plot
hold on
grid on

%% Frame {B} at (4,3)
TB = SE2(4,3,0);
disp('Frame B Transformation Matrix:')
TB.T

% Plot it
trplot2(TB,'frame','B','color','red')
axis auto
%% Point Plot
Bp = [2;4;1];
% Calculate the new point with respect to frame A
disp('The Transformed point Ap')
Ap = TB.T * Bp

% Plot Ap
plot_point(Ap([1,2],1),'b*')
axis([-1 10 -1 10])

text(Ap(1,1)+0.1,Ap(2,1)+0.1,strcat('(',num2str(Ap(1,1)),',',...
    num2str(Ap(2,1)),')'),'color','k')
text(Ap(1,1)+0.1,Ap(2,1)+0.5,strcat('(',num2str(Bp(1,1)),',',...
    num2str(Bp(2,1)),')'),'color','r')
axis([-1 10 -1 10])
xticks(-1:1:10)
yticks(-1:1:10)

