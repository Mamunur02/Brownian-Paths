% This function plot five Brownain paths with the same value of m but
% different random number seeds
function fivebrownpaths()
npts = 5000;
xx = linspace(0,2*pi,npts); 
for i = 1:5 % For loop for our five different plots    
    seed = i; rng(seed),fm = smooth(1024);
    % Generates our random function, making sure to change the random
    % number seed
    figure(i);
    gmxx = @(fm) (2*pi/npts)*cumsum(fm(xx));
    plot(xx,gmxx(fm),'Color','blue','DisplayName','GMXX')
    % Plots our Brownian path
    t = num2str(i);
    title('Smooth Random Walk With M As 1000 And Random Number Seed', t)
    xlabel('Value Of X')
    ylabel('Value Of GMXX')
    legend()
    % Appropriate labels
end   
end