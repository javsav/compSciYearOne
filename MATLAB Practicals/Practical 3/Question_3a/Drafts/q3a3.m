% This is a simple program that reads a number as input and prints out 'Divisible by four' if that number is divisible by four

fprintf("This program checks if a number is divisible by four.\n")
number = input("Please enter the number which you wish to check divisibility by four of: ");
while number == 0
    number = input("Please enter a numerical value other than zero: ");
end

if mod(number, 4) == 0
    factorTwo = number/4;
    fprintf("%.1f is divisible by four;\n %i * 4 = %0.1f. \n", number, factorTwo, number)
else
    fprintf("%0.f is not divisible by four, 4 / %0.f leaves a remainder of %0.2f \n", number, number, mod(number, 4))
end