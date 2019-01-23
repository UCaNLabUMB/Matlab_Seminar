% Activity 15 - Learning how to debug code in Matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

N_ITERS = 20;
N_VALS  = 10;

% Goal: Create a random array of N_VALS numbers and use the mean function 
% to find the average value of the randomly selected values. Repeat this
% for N_ITERS times, then plot the average values as a function of the
% iteration.

% Challenge: Something isn't correct with the code below. Step through the
% code and figure out what is wrong.

for i = 1:N_ITERS
    myArray = randn(N_VALS);
    myMax(i,:) = mean(myArray);
end
    
figure()
plot(myMax);
