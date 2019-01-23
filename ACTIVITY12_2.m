% Activity 12-2: Scripting best practices (Part D)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

%% Set Parameters
% Input Signal Parameters
t = 0:0.01:2;
A1 = 5;
A2 = 3;
f1 = 2;
f2 = 4;

% Output Parameters
MIN         = 0.5;
MAX         = 1.5;
OFFSET      = 5;
NOISE_PARAM = 0.5;

% Display settings
FIG1_POS = [500,200,600,300];    % Position / Size of Fig1
FIG2_POS = [50,100,400,500];     % Position / Size of Fig2
FIG1_LW = [1,0.5,0.75];          % Linewidth for input figure lines 1-3


%% Create signals
x1_t = A1*sin(2*pi*f1*t);             % First Sinusoid
x2_t = A2*sin(2*pi*f2*t);             % Second Sinusoid
x3_t = ones(1,length(t));           % Create an Indicator signal
x3_t((t<MIN) | (t>MAX)) = 0;


%% Manipulate Signals
y1_t = x1_t + x2_t + OFFSET;                   % Combine and add DC
y2_t = y1_t + NOISE_PARAM*randn(1,length(t));  % Add noise
y3_t = y2_t.*x3_t;                             % "Disable" signal


%% Display Signals
% Display Input Signals Together
figure('Position', FIG1_POS);
plot(t,x1_t,     'LineWidth',FIG1_LW(1)); hold on;
plot(t,x2_t,'--','LineWidth',FIG1_LW(2)); hold on;
plot(t,x3_t,     'LineWidth',FIG1_LW(3)); hold on;
title('Input Signals')
xlabel('time');
ylabel('Amplitude');
legend({['Sin with f=' num2str(f1) 'Hz and A=' num2str(A1)], ...
        ['Sin with f=' num2str(f2) 'Hz and A=' num2str(A2)], ...
        ['Indicator between ' num2str(MIN) ' and ' num2str(MAX)]});

% Display Output Signals Individually
figure('Position', FIG2_POS);
subplot(3,1,1)
plot(t,y1_t)
ylabel('Amplitude');
title(['Combined with Offset = ' num2str(OFFSET)])
subplot(3,1,2)
plot(t,y2_t)
ylabel('Amplitude');
title('Combined with Offset and Noise')
subplot(3,1,3)
plot(t,y3_t)
xlabel('time');
ylabel('Amplitude');
title('Combined In Range with Offset and Noise')
