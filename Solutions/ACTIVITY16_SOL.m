% Activity 16 - Incorporate a function
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
if (logical(find(indx==1)))
    figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
    annotation('textbox','String',text_list{1});
    my_x = my_x + 1;
    my_y = my_y + (my_x >= X_MAX);
    my_x = my_x*(my_x < X_MAX);
end

if (logical(find(indx==2)))
    figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
    annotation('textbox','String',text_list{2});
    my_x = my_x + 1;
    my_y = my_y + (my_x >= X_MAX);
    my_x = my_x*(my_x < X_MAX);
end


if (logical(find(indx==3)))
    figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
    annotation('textbox','String',text_list{3});
    my_x = my_x + 1;
    my_y = my_y + (my_x >= X_MAX);
    my_x = my_x*(my_x < X_MAX);
end


if (logical(find(indx==4)))
    figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
    annotation('textbox','String',text_list{4});
    my_x = my_x + 1;
    my_y = my_y + (my_x >= X_MAX);
    my_x = my_x*(my_x < X_MAX);
end


if (logical(find(indx==5)))
    figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
    annotation('textbox','String',text_list{5});
    my_x = my_x + 1;
    my_y = my_y + (my_x >= X_MAX);
    my_x = my_x*(my_x < X_MAX);
end


if (logical(find(indx==6)))
    figure('position', POS_START + my_x*X_OFFSET + my_y*Y_OFFSET)
    annotation('textbox','String',text_list{6});
    my_x = my_x + 1;
    my_y = my_y + (my_x >= X_MAX);
    my_x = my_x*(my_x < X_MAX);
end