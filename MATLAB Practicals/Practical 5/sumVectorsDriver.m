% This is a driver to test the sumVectors function, which takes two equally
% sized vectors as input (v1, v2), and returns the sum of all the elements
% of both vectors. Red text is used to highlight differences between
% expected outputs and actual outputs.

% Initial test case of simple addition of the numbers 1 through 20
% inclusive, (using ranges) which is correctly calculated by the function.
fprintf("\nTest case one: \n")
sum = sumVectors([1:10], [11:20]);
fprintf("Input is: [1:10], [11:20]\nExpected output is: 210\n")
fprintf("Actual output is:   %i\n\n", sum)

% The second test case uses vectors with all zeros and one integer, testing
% the function's ability to properly add zero values together. It is
% successful in performing this.
fprintf("\nTest case two: \n")
sum = sumVectors([0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,42]);
fprintf("Input is: [0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,42]" + ...
    "\nExpected output is: 42\n")
fprintf("Actual output is:   %i\n\n", sum)

% The third test case involves using a mixture of zeros, negative, and
% positive numbers
fprintf("\nTest case three: \n")
sum = sumVectors([0,-1,0,1,0,-1,0,1,0], [-1,0,1,0,-1,0,1,-43,42]);
fprintf("Input is: [0,-1,0,1,0,-1,0,1,0], [-1,0,1,0,-1,0,1,-43,42]" + ...
    "\nExpected output is: -1\n")
fprintf("Actual output is:   %i\n\n", sum)

% The fourth test case involves using a mixture of strings and numerals,
% testing matlab's string concatenation, AND type coercion when detecting
% both strings and numerals in an addition operation, which it does
% correctly - by converting the integer 32 into part of the string.
% The logical output is the 0 from the initialised vectorSum variable being
% concatenated to the rest of the sentence, which I had not considered,
% hence why it is not in my expected output.
fprintf("\nTest case four: \n")
sum = sumVectors([" I'm ", " years"], [32, " old."]);
fprintf("Input is: [ ''I'm'' , '' years''], [32, '' old.'']" + ...
    "\nExpected output is: I'm 32 years old. \n")
fprintf(2,"Actual output is:   %s\n\n", sum)

% The fifth test case tests 2 dimensional vectors, which the function
% calculates correctly, due to the use of the 'numel' function rather than
% the 'length' function, within the sumVectors function. 
fprintf("\nTest case five: \n")
sum = sumVectors([6.2,7.3;-8.4,9.5], [12.4,13.5;14.6,-15.7]);
fprintf("Input is: [6.2,7.3;8.4,9.5], [12.4,13.5;14.6,15.7]" + ...
    "\nExpected output is: 39.4 \n")
fprintf("Actual output is:   %.1f\n\n", sum)

% The sixth test case tests arrays with numbers 19 digits long,
% which matlab is expected not to calculate accurately due to its
% 16 digit precision. As we can see, the last 4 digits of the 20 digit
% answer are incorrect, as expected.
fprintf("\nTest case six: \n")
sum = sumVectors([9475638475648576954,4756395746573986758], ...
    [3967584758697085648, 2986758674839584798]);
fprintf("Input is: [9475638475648576954,4756395746573986758], ...\n" + ...
    "[3967584758697085648, 2986758674839584798]" + ...
    "\nExpected output is: 2118637765575923")
fprintf(2,"4158 \n")
fprintf(2,"Actual output is:   %.f\n\n", sum)

% The seventh test case tests 2 dimensional vectors, with relatively
% small fractions. As discussed many times previously, the first 16 values
% following the decimal place are correct, but the remaining 16 are not.
% This could be fixed by vpa but it would require installing the symbolic
% math toolbox.
fprintf("\nTest case seven: \n")
sum = sumVectors([1/156,2/457;5/699,1/164], [7/999,7/888;7/777,7/666]);
fprintf("Input is: [1/156,2/457;5/699,1/164], [7/999,7/888;7/777,7/666]")
fprintf("\nExpected output is: 0.0584466702327589")
fprintf(2,"4525339920499162 \n")
fprintf("Actual output is:   %.32f\n\n", sum)