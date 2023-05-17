% This is a simple program to calculate the body mass index (BMI) of an
% individual based on user inputs of weight in kilograms and height in
% metres

% Prompts user to input weight and height and uses a while loop to prevent
% strings or natural numbers

weight = input("Enter your weight in kilograms (e.g. 60): ");
while weight <= 0
    weight = input("Please enter a positive numerical value: ");
end

height = input("Enter your height in metres (e.g 1.61): ");
while height <= 0
    height = input("Please enter a positive numerical value: ");
end

if height >= 100
    height = height / 100
    fprintf("You entered your height in centimetres, so it has been converted to %.2f metres \n", height)
end

% Performs BMI calculation weight(kg)/(height(m)^2)

bmi = weight / (height^2);

fprintf("Your BMI is %.2f kg.", bmi)
