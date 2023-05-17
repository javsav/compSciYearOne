% This is a driver to test the triple function, which takes a single
% number (n) and multiplies it by 3. Unable to test strings or character
% arrays as they will throw an error and interrupt the rest of the test
% cases. I have individually tested them in the command window.
% I have also tested with no arguments and it suggests the correction
% "did you mean triple(1)" - as intended within my function. Red text is
% used to highlight differences between expected output and actual outputs.

% Initial test case of simple multiplication by three
fprintf("\nTest case one: \n")
result = triple(7);
fprintf("Input is: 7\nExpected output is: 21\n")
fprintf("Actual output is:   %i\n\n", result)

% This test case tests negative numbers and fractions, which matlab
% calculates accurately
fprintf("Test case two: \n") 
result = triple(-1/2);
fprintf("Input is: -1/2\nExpected output is: -1.5\n")
fprintf("Actual output is:   %.1f\n\n", result)

% This test case is testing for multiplication by zero, which is accurate
fprintf("Test case three: \n")
result = triple(0);
fprintf("Input is: 0\nExpected output is: 0\n")
fprintf("Actual output is:   %i\n\n", result)

% Boundary case testing very precise float (18 digits), result is
% slightly incorrect as Matlab uses 16 digits of precision. We can see that
% the first 15 digits after the decimal place are identical, but the final
% three are incorrect, due to the precision limit. This is not likely to be
% an issue except for the calculation of very precise small quantities
fprintf("Test case four: \n")  
result = triple(0.194738592734859763);
fprintf("Input is: 0.194738592734859763\n" + ...
    "Expected output is: 0.584215778204579")
fprintf(2,"289\n")
fprintf(2,"Actual output is:   %.18f\n\n", result)

% Boundary case testing very large number, result is incorrect (too large)
% as Matlab uses 16 digits of precision. Despite being a small percentage
% difference, the difference is still a numerical value of
% 341,128,851,226,627 greater for the actual vs expected output.
fprintf("Test case five: \n") 
result = triple(999999999999999999999999999999);
fprintf("Input is: 999999999999999999999999999999\n" + ...
    "Expected output is: 2999999999999999999999999999997\n")
fprintf(2,"Actual output is:   %.0f\n\n", result)

% Boundary case testing very small fraction, result is calculated correctly
% when rounded to nine decimal places
fprintf("Test case six: \n") 
result = triple(1/99000);
fprintf("Input is: 1/99000\n" + ...
    "Expected output is: 0.000030303\n")
fprintf("Actual output is:   %.9f\n\n", result)

% Testing on a vector to see if the function can multiply the
% individual elements of the vector, it is successful.
fprintf("Test case seven: \n") 
result = triple([1,5,3,7,8,3,6,4,2,9,6,5,12,19,18,17]);
fprintf("Input is: [1,5,3,7,8,3,6,4,2,9,6,5,12,19,18,17]\n" + ...
    "Expected output is: 3,15,9,21,24,9,18,12,6,27,18,15,36,57,54,51,\n")
fprintf("Actual output is:   ")
fprintf("%i,", result)
fprintf("\n")