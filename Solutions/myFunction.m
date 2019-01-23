function [outputArg1,outputArg2] = myFunction(inputArg1,inputArg2)
%MYFUNCTION Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = inputArg1;
outputArg2 = internal_function(inputArg2,inputArg1);
end

function [outputArg1] = internal_function(inputArg1,inputArg2)
    outputArg1 = inputArg1/inputArg2;
end