%% Random Fourier Series

%% Exercise 1

%%
% In this exercise I have created a function that creates an anonymous
% function corresponding to the finite random Fourier series. I have then plotted
% this function with value of $m = 20$ from $0$ to $2\pi$. I
% have also included the standard deviation of this function for
% convenience. I have ensured that the same anonymous function is
% reproduced by making sure that Matlab's random number seed is always set
% to $1$. This works as the random numbers I generate to create the anonymous
% function are reproduced. 

fmplot(20)

%% Exercise 2

%%
% In this exercise I once again plot my anonmyous function with $m$ = $50$
% and $m$ = $200$. I include the standard deviation again as well. This is
% to illustrate how $\sigma =$ the square root of $2m + 1$. 

fmplot(50)
fmplot(200)

%%
% By looking at the graphs we can deduce this standard deviation is
% correct. This is because as the value of $m$ increases we see that the
% spread of our smooth function increases. The dashed lines representing 
% the standard deviation contain the bulk portion of our
% function, which is the values of the smooth function close to the mean.

%%
% In this next section I have plotted the maximum absolute value of the
% smooth function for values of m = 20,40,...,1000 against $m$ on one
% subplot and against the square root of $m$ on another subplot. On both
% subplots I have also plotted $4\sigma$ against its respective axis.

cmplotm()
cmplotsqrtm()

%%
% By looking at these two subplots we can see that the maximum absolute
% value of the smooth function (blue dots) scales with $4\sigma$ (red crosses)
% as $m$ increases. In the second subplot we see there is linear growth.
% This is to illustrate how the size of the smooth function scales with the
% square root of $m$.

%% Exercise 3

%%
% In this exercise I plot three smooth random walks that approaches a
% Brownian path as $m \rightarrow \infty$. In this case I will plot three random walks where
% the random number seed is always set to $1$ when creating my smooth
% random function. 

cumsumplot()

%%
% By looking at the graphs we can see that despite having different values
% of $m$ they all produce a graph where the shape of the graphs are
% similar. This is because since the random number seed is always the same,
% the first portion of the smooth random functions is the same to some
% degree. We see that with a higher value of $m$ the smooth random walk is
% more defined and that the graph becomes less smooth. 

%% Exercise 4

%%
% In this exercise I have created $5$ different Brownian paths with $m =
% 1024$ and making sure this time that the random number seed is not
% reinitialised. The concept behind is that Brownian paths are meant to model random behaviour that evolves after time. 

fivebrownpaths()

%% 
% By looking at the graphs we can see that this time the different graphs
% do not resemble each other. This is because since the random number seed
% is different, the smooth random functions are completely different.
% Comparing these graphs and the ones from before, we can note that the
% Brownian paths start from $0$, which is an axiom for Brownian motion.

%%
% In this next section I illustrate $2D$ Brownian paths. This is done by
% plotting a smooth random walk with RNG(1) against another with RNG(2). 
% I have produced one subplot with $m = 100$ and another with $m = 1000$.

twodbrownianpaths100()
twodbrownianpaths1000()

%%
% Looking at these graphs we can see they both produce a similar shape. The
% second subplot is more detailed and filled in as it uses a higher value
% of $m$. The plots look weird and this highlights how Brownian motion is
% meant to be truly random.

%% Description Of Functions

%%
% This section shows the code written to create the functions that I have
% used to complete the exercises. 

type smooth.m
type fmplot.m
type cmplotm.m
type cmplotsqrtm.m
type cumsumplot.m
type fivebrownpaths.m
type twodbrownianpaths100.m
type twodbrownianpaths1000.m

