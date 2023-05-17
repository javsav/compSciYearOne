% This is a simple program to calculate the body mass index (BMI) of an
% individual based on user inputs of weight in kilograms and height in
% metres

% Prompts user to input weight and height and uses a while loop to prevent
% strings or natural numbers

weight = input("Enter your weight in kilograms: ");
while weight <= 0
    weight = input("Please enter a positive numerical value: ");
end

height = input("Enter your height in metres: ");

% Performs BMI calculation weight(kg)/(height(m)^2)

bmi = weight / (height^2);

fprintf("Your BMI is %.2f kg.", bmi)
