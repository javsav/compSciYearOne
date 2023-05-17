% This is a driver to test the minMaxVectors function, which returns the
% minimum and maximum values of two input vectors of the same numel. Red
% text is used to show incorrect answers

% Initial test case of of the numbers 1 through 40 inclusive, 
% (using ranges), the min and max of which are correctly determined.
fprintf("\nTest case one: \n")
[min max] = minMaxVectors([1:20], [21:40]);
fprintf("Input is: [1:20], [21:40]\nExpected output is: 1, 40\n")
fprintf("Actual output is:   %i, %i\n", min, max)

% Second test case uses zeros only to see if error is thrown, or if min and
% max are both reported as 0.
fprintf("\nTest case two: \n")
fprintf("Input is: [0,0,0,0], [0,0,0,0]\nExpected output is: 0, 0\n")
fprintf("Actual output is:")
[min max] = minMaxVectors([0,0,0,0], [0,0,0,0]);
fprintf("%i, %i\n", min, max)

% Third test case tests negative and positive integers to detect accurate
% sorting by my divideSort function. Works correctly.
fprintf("\nTest case three: \n")
fprintf("Input is: [-1000,-2000,-1,-2], [-3,-4,-5,0.00000000000001]" + ...
    "\nExpected output is: -2000, 0.00000000000001\n")
[min max] = minMaxVectors([-1000,-2000,-1,-2], [-3,-4,-5,0.00000000000001]);
fprintf("Actual output is:   %i, %.14f\n", min, max)

% Fourth test case tests boundary case of very large numbers to assess
% matlab's 16 bit precision. As expected, matlab detects both numbers as
% equal size and displays them incorrectly due to its precision level,
% even losing a digit as shown by the misalignment of output.
fprintf("\nTest case four: \n")
fprintf("Input is: [1000000000000000000000001,1000000000000000000000000],\n" + ...
    "[1000000000000000000000002,1000000000000000000000010]" + ...
    "\nExpected output is: 1000000000000000000000000," + ...
    " 1000000000000000000000010\n")
[min max] = minMaxVectors([1000000000000000000000001, ...
    1000000000000000000000000], [1000000000000000000000002, ...
    1000000000000000000000010]);
fprintf(2,"Actual output is:   %.0f, %.0f\n", min, max)


% Fifth test case tests small floats close in value. The function correctly
% calculates the minimum and maximum values.
fprintf("\nTest case five: \n")
fprintf("Input is: [.001,.0001], [.002,.0002]" + ...
    "\nExpected output is: 0.0001, 0.002\n")
[min max] = minMaxVectors([.001,.0001], [.002,.0002]);
fprintf("Actual output is:   %.4f, %.3f\n", min, max)

% Sixth test case tests very large arrays as defined by range, to determine
% if the sort function has difficulty in sorting large sequences
fprintf("\nTest case six: \n")
fprintf("Input is: [0:-5:-100000,-100000:-5:-200000]," + ...
    " [0:5:100000,100000:5:200000]" + ...
    "\nExpected output is: -200000, 200000\n")
[min max] = minMaxVectors([0:-5:-100000,-100000:-5:-200000], ...
    [0:5:100000,100000:5:200000]);
fprintf("Actual output is:   %.0f, %.0f\n", min, max)

% Seventh test case tests using 2d vectors to see if the function can
% determine the relative sizes of the sums of the vectors correctly, which
% it thankfully successfully achieves!
fprintf("\nTest case seven: \n")
fprintf("Input is [2345,3;-1/64,7;550,-12;30,20]," + ...
    " [5432,-5/10;3/230,7;897654,-120;0.000001,22]\n" + ...
    "Expected output is: -120, 897654\n")
[min max] = minMaxVectors([2345,3;-1/64,7;550,-12;30,20], ...
    [5432,-5/10;3/230,7;897654,-120;0.000001,22]);
fprintf("Actual output is:   %i, %i\n", min, max)