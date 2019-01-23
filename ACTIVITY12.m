% Activity 12: Scripting best practices
% This file does NOT represent best practices... we have hard coded values,
% poor variable labeling, and long lines of code. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

% Set Parameters
t = 0:0.01:2;
temp1 = 0.5;
temp2 = 1.5;


% Create signals
x1_t = 5*sin(2*pi*2*t);             % First Sinusoid
x2_t = 3*sin(2*pi*4*t);             % Second Sinusoid
x3_t = ones(1,length(t));           % Create an Indicator signal
x3_t((t<temp1) | (t>temp2)) = 0;


% Manipulate Signals
y1_t = x1_t + x2_t + 5;             % Combine and add DC
y2_t = y1_t + 0.5*randn(1,201);     % Add noise
y3_t = y2_t.*x3_t;                  % "Disable" signal out of range


% Display Input Signals Together
figure('Position', [500,200,600,300]);
plot(t,x1_t,'LineWidth',1); hold on;
plot(t,x2_t,'--'); hold on;
plot(t,x3_t,'LineWidth',0.75); hold on;
title('Input Signals')
xlabel('time');
ylabel('Amplitude');
legend({'Sin with f=2Hz and A=5', 'Sin with f=4Hz and A=3', 'Indicator between 0.5 and 1.5'});


% Display Output Signals Individually
figure('Position', [50,100,400,500]);
subplot(3,1,1)
plot(t,y1_t)
ylabel('Amplitude');
title('Combined with Offset = 5')
subplot(3,1,2)
plot(t,y2_t)
ylabel('Amplitude');
title('Combined with Offset and Noise')
subplot(3,1,3)
plot(t,y3_t)
xlabel('time');
ylabel('Amplitude');
title('Combined In Range with Offset and Noise')
