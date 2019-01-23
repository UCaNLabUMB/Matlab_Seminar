% Solutions.m - Possible answers for the various activities
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Activity 1
% Update Development Environment


%% Activity 2
% Basic Operations
a = 5; b = 8; c = 62; d = 108;
x = c + a*b;
y = d - a*b;
z = x/y;


%% Activity 3
% Load and run ACTIVITY03.m


%% Activity 4
% Use help function and Matlab documentation
help max
web('https://www.mathworks.com/help/matlab/ref/mean.html');


%% Activity 5
% Compare data types and modify in the variable editor
a = 10;
b = int8(10);


%% Activity 6
% Use min, max and mean functions on Arrays
load ACTIVITY06.mat
my_min = min(ARRAY1);
[my_max, my_index] = max(ARRAY2);
my_mean = mean([ARRAY3, ARRAY4']);


%% Activity 7
% Compare file size of saved mat files using different data types
A = 1:10000;
B = cast(A,'uint16');
whos
save('ACTIVITY7_temp1.mat','A','-v7.3','-nocompression');
save('ACTIVITY7_temp2.mat','B','-v7.3','-nocompression');


%% Activity 8
% Load arrays and use logical selection to pick specified range of values
load ACTIVITY08.mat
my_array = my_vals(((my_time>=25)&(my_time<=50))|((my_time>=75)&(my_time<=80)));
total = sum(my_array);


%% Activity 9
% Practice using plot tools interface, starting with the following:
temp = sin(0:pi/10:2*pi);
temp2 = sin((0:pi/10:2*pi) + pi/4);


%% Activity 10
% Use subplot to show multiple plots on a figure
load ACTIVITY10.mat
figure('Position',[100,100,900,300])
subplot(1,3,1);
surf(X,Y,Z);
subplot(1,3,2);
plot(t,x_t);
subplot(1,3,3);
stem(t(x_t>0),y_t(x_t>0));


%% Activity 11
% Execute ACTIVITY11.m to create a movie
% Add the following to save the movie 
% (or execute the following after executing ACTIVITY11.m)
v = VideoWriter('myvideo.avi');
open(v);
for i=1:16
    % Repeat each frame multiple times to slow down video
    writeVideo(v,M(i)); writeVideo(v,M(i));
    writeVideo(v,M(i)); writeVideo(v,M(i));
end
close(v);