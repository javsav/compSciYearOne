% This is a simple program that reads a number as input and prints out
% whether that number is divisible by four, and if so, what the other
% common factor is. If the number is not divisible by four, the remainder
% is provided

% Description of program
fprintf("This program checks if a number is evenly divisible by four.\n")
% Prompt user for input
number = input("Please enter a number which you wish to check the divisibility by four of: ");
% While loop to prevent 0 or character inputs (without quotation marks)
while number == 0
    number = input("Please enter a numerical value other than zero: "); % Continues to prompt for input until input ~= 0
end

% If statement evaluates whether the input number / 4 has a remainder of
% zero (and therefore is evenly divisible by four)
if mod(number, 4) == 0
    factorTwo = number/4; % If evenly divisible by four, factorTwo is the number which when multiplied by four will give the input
    fprintf("%0.2f is evenly divisible by four;\n   %i * 4 = %i. \n", number, factorTwo, number) % If number is divisible by four, outputs "yes" and gives equation involving factorTwo, number and four
    true; % Return true if evenly divisible by four (if we are to use this as a function)
else
    fprintf("%0.2f is not evenly divisible by four;\n   %0.2f / 4 leaves a remainder of %0.2f \n", number, number, mod(number, 4)) % If number is not evenly divisible by four, outputs "no" and gives remainder when dividing by four
    false; % Return false if not evenly divisible by four (if we are to use this as a function)
end