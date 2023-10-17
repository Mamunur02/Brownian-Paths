% This function plots the anonymous function that we created using 5000
% values equally spaced in the interval 0 to 2pi. It takes an argument to
% determine what anonymous function it should produce. This function also
% reproduces the same graph for the same value of m as well as illustrating
% numerically the standard deviation for a value of m.
function fmplot(m)
npts = 5000;
xx = linspace(0,2*pi,npts); % Creates the values of x
seed = 1; rng(seed), fm = smooth(m); % Generates the anonymous function
% The seed ensures that the same anonmyous function is produced for the
% same value of m
figure(m); % Defines which figure to plot this graph
plot(xx,fm(xx),'Color','blue','DisplayName','FM Graph') 
% Plots fm against xx
hold on
t = num2str(m);
y = (2*m + 1)^0.5; % Calculates standard deviation
fplot(y,'--','Color','red','DisplayName','Standard Deviation')
fplot(-y,'--','Color','red','DisplayName','Standard Deviation')
title('FM Plot With M As', t)
xlabel('Value Of X From 0 To 2\pi')
ylabel('Value Of FM')
legend()
% Appropriate labelling
end