% This function plots the indefinite integral of our smooth function from 0
% to x against x. It makes sure to use the same random number seed to
% produce three different smooth functions with differernt values of m. It
% plots three different smooth random walks respective to our three
% different smooth functions.
function cumsumplot()
npts = 5000;
xx = linspace(0,2*pi,npts); 
% Generates points for x
for i = 1:3 % A for loop to produce our three different functions
    seed = 1; rng(seed), fm = smooth(10^(4-i));
    % Produces the smooth function with the same random number generator
    figure(i); % Plots on different figures
    gmxx = @(fm) (2*pi/npts)*cumsum(fm(xx)); 
    % Function for the indefinite integral
    plot(xx,gmxx(fm),'Color','blue','DisplayName','GMXX') % Plots the smooth random walk
    t = num2str(10^(4-i));
    title('Smooth Random Walk With M As', t)
    xlabel('Value Of X')
    ylabel('Value Of GMXX')
    legend()
    % Appropriate labels
end   
end