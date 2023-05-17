% This is a simple program that reads a number as input and prints out
% whether that number is divisible by four, and if so, what the other
% common factor is. If the number is not divisible by four, the remainder
% is provided

fprintf("This program checks if a number is divisible by four.\n")
number = input("Please enter the number which you wish to check divisibility by four of: ");
while number == 0
    number = input("Please enter a numerical value other than zero: ");
end

if mod(number, 4) == 0
    factorTwo = number/4;
    fprintf("%0.2f is evenly divisible by four;\n %i * 4 = %i. \n", number, factorTwo, number)
else
    fprintf("%0.2f is not divisible by four, %0.2f / 4 leaves a remainder of %0.2f \n", number, number, mod(number, 4))
end