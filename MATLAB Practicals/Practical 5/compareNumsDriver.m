% This is a driver to test the compareNums function, which takes two
% numerical inputs and returns them in order of smallest to largest. If
% the inputs are arrays it returns the sums of the arrays in order of value
% of their sums. The function also displays a message if inputs are equal.
% Cannot test for character arrays in the driver as they throw errors, 
% due to my usage of assert in the function. Strings also naturally throw
% errors. Red text is used to highlight differences between expected
% outputs and actual outputs.

% First test case checks if the numbers are correctly allocated
% to small and big, despite being in reverse order
fprintf("\nTest case one: \n")
fprintf("Input is 25, 12\nExpected output is: 12, 25\n")
[small big] = compareNums(25, 12);
fprintf("Actual output is:   %i, %i\n", small, big)

% Second test case is the first case in reverse order to test that the
% output order is due to the relative size of the numbers and not some
% other reason
fprintf("\nTest case two: \n")
fprintf("Input is 12, 25\nExpected output is: 12, 25\n")
[small big] = compareNums(12, 25);
fprintf("Actual output is:   %i, %i\n", small, big)

% Third test case tests a negative and positive number - checking if the
% program can determine that a negative number is smaller than a positive
% despite its absolute value being larger
fprintf("\nTest case three: \n")
fprintf("Input is 1, -2000\nExpected output is: -2000, 1\n")
[small big] = compareNums(1, -2000);
fprintf("Actual output is:   %i, %i\n", small, big)

% Fourth test case compares very large numbers (boundary case) in excess of
% matlabs 16 digit precision - as such incorrectly considers them equal in
% size despite having a difference of 89, and furthermore, incorrectly
% displays their values, with a difference of up to 8,566,849,142,783.
% However, the overall percentage difference is very small. We can see
% that the first 16 digits are correct, but the remaining thirteen are
% quite incorrect. The source of the incorrect thirteen digits
% (1433150857216) is unclear.
fprintf("\nTest case four: \n")
fprintf("Input is 99999999999999999999999999999," + ...
    " 99999999999999999999999999910\nExpected output is:" + ...
    " 9999999999999999")
fprintf(2,"9999999999910,")
fprintf(" 9999999999999999")
fprintf(2,"9999999999999\n")
fprintf(2,"Actual output is: ")
[small big] = compareNums(99999999999999999999999999999, ...
    99999999999999999999999999910);
fprintf(2,"                    %.0f, %.0f ", small, big)

% Fifth test case tests small fractions (boundary case), which matlab
% rounds correctly to four decimal places, and would likely round correctly
% to over fifteen decimal places due to the recursive nature of the result.
fprintf("\nTest case five: \n")
fprintf("Input is 1/132, 1/130\nExpected output is: 0.0076, 0.0077\n")
[small big] = compareNums(1/132, 1/130);
fprintf("Actual output is:   %.4f, %.4f\n", small, big)

% Sixth test case tests using zero and a negative number very close in
% value to zero, evaluating the function's ability to compare zero to
% numbers, and to evaluate negative float input arguments. The function
% performs this correctly.
fprintf("\nTest case six: \n")
fprintf("Input is 0, -0.000001\nExpected output is: -0.000001, 0\n")
[small big] = compareNums(0, -0.000001);
fprintf("Actual output is:   %.6f, %.0f\n", small, big)

% Seventh test case tests using 2d vectors to see if the function can
% determine the relative sizes of the sums of the vectors correctly, which
% it does.
fprintf("\nTest case seven: \n")
fprintf("Input is [2,5;3,7], [1,3;4,6]\n" + ...
    "Expected output is: 14, 17\n")
[small big] = compareNums([2,5;3,7], [1,3;4,6]);
fprintf("Actual output is:   %i, %i\n", small, big)