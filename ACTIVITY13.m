% Activity 13 - Use if statements to select plots to display
%  OBJECTIVE: Use the values returned in 'indx' to determine which plots to
%  display. Only show plots that are selected from the list. 
%
%  HINT: You can use the 'find' function with logical addressing to see if
%  a specific value shows up in an array:
%      e.g., logical(find(indx==3)) returns true if the value '3' is in the
%      array 'indx'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

%% Figure Selection
text_list = {'Time Domain Signal', 'Time Domain + Noise', ...
             'Frequency Domain 1', 'Frequency Domain 2', ...
             'Frequency Domain 3', 'Frequency Domain 4'};

[indx,tf] = listdlg('ListString',text_list);         
         

%% Display Figure Settings
FIG_SIZE_X  = 400;
FIG_SIZE_Y  = 300;
POS_START   = [50, 350, FIG_SIZE_X, FIG_SIZE_Y];
X_OFFSET    = [FIG_SIZE_X, 0, 0, 0];
Y_OFFSET    = [0, -FIG_SIZE_Y, 0, 0];
X_MAX       = 3;

my_x = 0;
my_y = 0;

%% Setup Figures
figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
annotation('textbox','String',text_list{1});
my_x = my_x + 1;
my_y = my_y + (my_x >= X_MAX);
my_x = my_x*(my_x < X_MAX);


figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
annotation('textbox','String',text_list{2});
my_x = my_x + 1;
my_y = my_y + (my_x >= X_MAX);
my_x = my_x*(my_x < X_MAX);


figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
annotation('textbox','String',text_list{3});
my_x = my_x + 1;
my_y = my_y + (my_x >= X_MAX);
my_x = my_x*(my_x < X_MAX);


figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
annotation('textbox','String',text_list{4});
my_x = my_x + 1;
my_y = my_y + (my_x >= X_MAX);
my_x = my_x*(my_x < X_MAX);


figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
annotation('textbox','String',text_list{5});
my_x = my_x + 1;
my_y = my_y + (my_x >= X_MAX);
my_x = my_x*(my_x < X_MAX);


figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
annotation('textbox','String',text_list{6});
my_x = my_x + 1;
my_y = my_y + (my_x >= X_MAX);
my_x = my_x*(my_x < X_MAX);
