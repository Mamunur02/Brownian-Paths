% This function illustrates 2D Brownian paths. It plots gmxx with rng(1)
% against gmxx with rng(2) with fm taking the value of 1000
function twodbrownianpaths1000()
npts = 5000;
xx = linspace(0,2*pi,npts);
seed = 1; rng(seed), fm1 = smooth(1000);
seed = 2; rng(seed), fm2 = smooth(1000);
gmxx1 = @(fm) (2*pi/npts)*cumsum(fm(xx));
figure(999);
subplot(1,2,2);
plot(gmxx1(fm1),gmxx1(fm2),'Color','blue','DisplayName','2D Brownian Path')
axis equal
title('2D Brownian Path With M As 1000')
xlabel('Value Of GMXX With RNG(1)')
ylabel('Value Of GMXX With RNG(2)')
legend()
end