% Activity 3: First Script
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all

answer = questdlg('Are you excited to learn about Matlab??');
if strcmp(answer,'Yes')
    disp('HELLO WORLD!!!');
elseif strcmp(answer,'No')
    disp('Regular Hello World...');
end
