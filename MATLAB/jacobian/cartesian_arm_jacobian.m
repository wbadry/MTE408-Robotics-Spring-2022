%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MTE 408 Introduction to Robotics                                        %
% SECTION 8                                                               %
% WALEED ELBADRY                                                          %
% 19/12/2021                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Computing the jacobian of cartesian robot
%% Peter Croke toolbox
clearvars;
clc;
close all % Close all opened figures

%% Create each link from the table we made
a = 0;
alpha = -pi/2;

L(1) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 10]);

a = 0;
alpha = pi/2;

L(2) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 10]);

a = 0;
alpha = 0;

L(3) = Link('a',a,'alpha',alpha,'prismatic','qlim',[1 10]);



%% Create the arm based on links and display DH table
arm = SerialLink(L,'name','Cartesian Arm')

%% Show the arm and have sliders for each joint
arm.teach([5 5 5]);

%% Compute the forward kinematic of the initial pose
% th1 = 0;
% th2 = 0;
% th3 = 0;
% Ti = arm.fkine([th1 th2 th3])
% 
% %% Compute back the inverse kinematic 
% qi = arm.ikine(Ti,'q0',[0 0 0],'mask', [1 1 1 0 0 0])
% % 
% %% Compute the forward kinematic of the final pose
% th1 = 0;
% th2 = pi/3;
% th3 = 0;
% Tf = arm.fkine([th1 th2 th3])
% 
% %% Compute back the inverse kinematic 
% qf = arm.ikine(Tf,'q0',[0 0 0],'mask', [1 1 1 0 0 0])
% % 
% %% Simulate the path
% if(qi(2)>qf(2))
%     step =-0.1;
% else
%     step=0.1;
% end
% figure('name','SECTION 7');
% for th = qi(2):step:qf(2)
%     arm.plot([0 th 0])
%     pause(0.01)
% end