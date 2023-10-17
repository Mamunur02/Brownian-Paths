% This function plots the highest absolute value of the smooth function fm
% for each value of m against the square root of m.
function cmplotsqrtm()
npts = 5000;
xx = linspace(0,2*pi,npts);
for m = 20:20:1000
    fm = smooth(m);
    cm = max(abs(fm(xx)));
    figure(1000);
    subplot(1,2,2); % Plots the graph right next to our other subplot
    plot(m^0.5,cm,'.','Color','blue') 
    % Plots the value against the square root of m
    hold on
    y = 4*(2*m + 1)^0.5;
    plot(m^0.5,y,'x','Color','red')
end
title('Graph Of CM Against The Square Root Of M')
xlabel('Value Of The Square Root Of M')
ylabel('Value Of CM')
% Appropriate labels
end