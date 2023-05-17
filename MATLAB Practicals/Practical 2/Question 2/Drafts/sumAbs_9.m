% This is a program that asks the user to input 5 negative or positive
% numbers, then outputs the sum of the absolute value of each of the
% numbers

% Defines variable sum to use (uses less memory than an array hence zeros
% was not used to create an empty array)

sum = 0

% Prompt user for 5 numerical inputs and each time adds the absolute value
% of the input to the variable sum, thereby summing the five values

fprintf("Please input five numbers for which you would like to find the sum of their absolute values\n")

for index = 1:5
    fprintf("Input number %i: ", index);
    sum = abs(input('')) + sum;
end

fprintf("The sum of the absolute value of the five numbers is %.1f ", sum)
   
