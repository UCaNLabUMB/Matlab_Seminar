% Activity 14 - Movie for histogram of random array with increasing size.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

STEP = 2;
ITERS = 100;
BIN_SIZE = 10;
SAVE_MOVIE = 0;

for i = 1:ITERS
    myArray = randn(1,i*STEP);

    figure()
    histogram(myArray,BIN_SIZE);
    xlim([-5,5])
    M(i) = getframe;
    close all
end

if (SAVE_MOVIE)
    v = VideoWriter('myhistograms.avi');
    open(v);
    for i = 1:ITERS
        writeVideo(v,M(i)); % Simple way to slow down the saved video...
        writeVideo(v,M(i)); % Repeat each frame multiple times
        writeVideo(v,M(i));
        writeVideo(v,M(i));
        writeVideo(v,M(i));
    end
    close(v);
end