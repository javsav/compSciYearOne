% This is a simple program that reads a number as input and prints out 'Divisible by four' if that number is divisible by four

fprintf("This program checks if a number is divisible by four.\n")
number = input("Please enter the number which you wish to check divisibility by four of: ")
while number == 0 || ~isa(number, 'double')
    number = input("Please enter a numerical value other than zero")