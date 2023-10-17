% This function plots the highest absolute value of the smooth function fm
% for each value of m against m. 
function cmplotm()
npts = 5000;
xx = linspace(0,2*pi,npts);
% Generates enough data points to have a clear idea of what is our highest 
% absolute value for fm
for m = 20:20:1000 % Uses a for loop to increment our values of m by 20 
    % from 20 to 1000
    fm = smooth(m); % Generates our smooth function
    cm = max(abs(fm(xx))); 
    % Finds the highest absolute value of our function
    figure(1000);
    subplot(1,2,1); % Our plot will be on a subplot
    plot(m,cm,'.','Color','blue') % Plots our value against m
    hold on
    y = 4*(2*m + 1)^0.5;
    plot(m,y,'x','Color','red') % Plot 4 times the standard deviation for
    % each value of m for comparison
end
title('Graph Of CM Against M')
xlabel('Value Of M')
ylabel('Value Of CM')
% Appropriate labels
end