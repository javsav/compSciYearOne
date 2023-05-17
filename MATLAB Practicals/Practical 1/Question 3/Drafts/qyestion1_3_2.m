% This is a simple program that estimates the total daily water usage of a
% city in kilolitres based on its population, and then estimates the
% percentage of that water that can be provided by a desalination plant
% with a capacity of three hundred thousand kilolitres.

% Prompts user to input city name and population

city = input("What is the name of the city that you are interested in the water usage of? ", "s");
population = input("What is the population of the city that you would like to estimate the total daily water use of? ");

% Estimates number of people per households

householdSize = 4;

% Estimated water usage per household (litres)

waterPerHouse = 100;

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