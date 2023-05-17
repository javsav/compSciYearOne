% This is a simple program that estimates the total daily water usage of a
% city in kilolitres based on its population and rough estimates of household size and water usage per house,
% and then estimates the percentage of that water that can be provided by a desalination plant 
% with a capacity of three hundred thousand kilolitres. An if statement is
% used to prevent percentages greater than 100, as such a percentage is
% technically not possible.

% Prompts user to input city population

population = input("What is the population of the city that you would like to estimate the total daily water use of? ");

% Estimates average number of people per households based on 2021 Australian data

householdSize = 2.59;

% Estimated water usage per household (litres) based on 2023 Australian
% data

waterPerHouse = 274;

% Estimates water usage based on an average of 100 daily litres per
% person and divides by 1000 to convert litres to kilolitres

water = waterPerHouse * population / householdSize / 1000;

% Calculates percentage covered by desalination plant (daily capacity
% 300,000 kilolitres)

percentage = 3e5 / water * 100;

% Prevents percentages larger than 100
if percentage >= 100
    percentage = 100;
end

% Prints the approximate daily water usage of the city followed by the
% percentage covered by the desalination plant

fprintf("The approximate total daily household water use of %s is %f kilolitres \n", city, water)
fprintf("The percentage that can be covered by the desalination plant is %f %", percentage)