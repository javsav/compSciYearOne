% This is a program that asks the user to input 5 negative or positive
% numbers, then outputs the sum of the absolute value of each of the
% numbers

% Defines variable result to use (uses less memory than a vector hence zeros
% was not used to create an empty 1*5 vector)

result = 0;

% Prompt user for 5 numerical inputs using a for loop and each time adds the absolute value
% of the input to the variable result (which is initially zero), thereby summing the five values

fprintf("Please input five positive or negative numerals for which you would like to find the sum of their absolute values:\n")

for index = 1:5
    fprintf("Input number %i: ", index);
    result = abs(input('')) + result;
end

% Displays the sum of the absolute value of the five inputs

fprintf("The sum of the absolute value of the five numbers is %.1f ", result)
   
