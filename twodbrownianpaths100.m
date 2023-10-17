% This function illustrates 2D Brownian paths. It plots gmxx with rng(1)
% against gmxx with rng(2) with fm taking the value of 100
function twodbrownianpaths100()
npts = 5000;
xx = linspace(0,2*pi,npts);
seed = 1; rng(seed), fm1 = smooth(100);
seed = 2; rng(seed), fm2 = smooth(100);
% Our two different smooth functions
gmxx = @(fm) (2*pi/npts)*cumsum(fm(xx));
% Function for gmxx
figure(999);
subplot(1,2,1);
plot(gmxx(fm1),gmxx(fm2),'Color','blue','DisplayName','2D Brownian Path')
% Plots gmxx with rng(1) against gmxx with rng(2)
axis equal
% Makes the x and y components equally scaled
title('2D Brownian Path With M As 100')
xlabel('Value Of GMXX With RNG(1)')
ylabel('Value Of GMXX With RNG(2)')
legend()
end