% Activity 11: Test Video 
%(See loop below for more efficient implementation)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

%% Non-Loop Implementation
[x,y] = meshgrid(-2:0.5:2,-2:0.5:2);
u = 1*ones(9,9);
v = -1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(1) = getframe;

u = 1*ones(9,9);
v = -0.5*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(2) = getframe;

u = 1*ones(9,9);
v = 0*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(3) = getframe;

u = 1*ones(9,9);
v = 0.5*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(4) = getframe;

u = 1*ones(9,9);
v = 1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(5) = getframe;

u = 0.5*ones(9,9);
v = 1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(6) = getframe;

u = 0*ones(9,9);
v = 1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(7) = getframe;

u = -0.5*ones(9,9);
v = 1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(8) = getframe;

u = -1*ones(9,9);
v = 1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(9) = getframe;

u = -1*ones(9,9);
v = 0.5*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(10) = getframe;

u = -1*ones(9,9);
v = 0*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(11) = getframe;

u = -1*ones(9,9);
v = -0.5*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(12) = getframe;

u = -1*ones(9,9);
v = -1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(13) = getframe;

u = -0.5*ones(9,9);
v = -1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(14) = getframe;

u = 0*ones(9,9);
v = -1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(15) = getframe;

u = 0.5*ones(9,9);
v = -1*ones(9,9);
quiver(x,y,u,v);
axis([-2.5,2.5,-2.5,2.5]);
M(16) = getframe;

movie(M,5)

%% Loop Implementation
% [x,y] = meshgrid(-2:0.5:2,-2:0.5:2);
% uvals = [1,1,1,1,1,0.5,0,-0.5,-1,-1,-1,-1,-1,-0.5,0,0.5];
% vvals = [-1,-0.5,0,0.5,1,1,1,1,1,0.5,0,-0.5,-1,-1,-1,-1];
% for iter = 1:16
%     u = uvals(iter)*ones(9,9);
%     v = vvals(iter)*ones(9,9);
%     quiver(x,y,u,v);
%     axis([-2.5,2.5,-2.5,2.5]);
%     M(iter) = getframe;
% end
% movie(M,5)

