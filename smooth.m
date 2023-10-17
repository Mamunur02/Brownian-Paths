% This function produces an anomynous function fm corresponding to the
% smooth random function defined by the random Fourier series. This
% function takes an integer as an argument. It then computes independent
% samples of the standard normal distribution and then uses these values to
% create the anonymous function using the Fourier series formula.
function fm = smooth(m) % Takes a value m
r = randn(2*m+1,1); % Generates the random samples in an array
fm = @(x) 0; % Defining the function
fm = @(x) fm(x) + r(1); % Appends the function with our first value
count = 1; % A variable to keep check of the index we are on 
for j = 2:2*m + 1 % A for loop to compute the series 
    if mod(j,2) == 0 % Checks if we are using the a or b value
        fm = @(x) fm(x) + (2.^0.5 * r(j) * cos(count*x)); 
        % Appends the function
    else
        fm = @(x) fm(x) + (2.^0.5 * r(j) * sin(count*x));
        count = count + 1; % Updates what index we are on
    end
end
fm = @(x)fm(x);
end