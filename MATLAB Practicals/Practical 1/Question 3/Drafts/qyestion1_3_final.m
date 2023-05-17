% This is a simple program that estimates the total daily water usage of a
% city in kilolitres based on its population and Australian government data estimates of household size and daily water usage per house,
% and then estimates the percentage of that water that can be provided by a desalination plant 
% with a capacity of three hundred thousand kilolitres. An if statement is
% used to prevent percentages greater than 100, as such a percentage is
% technically not possible. The only input allowed is the population of the
% city, and as such, Australian government data have been used for the
% number of people per house and daily household water usage.

% Prompts user to input city population

population = input("What is the population of the Australian city that you would like to estimate the \ntotal daily water usage and percentage covered by a 300,000 kilolitre desalination plant? ");

% While loop to prevent unnatural numbers or strings

while population < 0
    population = input("Please enter an numerical value without decimals greater than or equal to zero (your input will be rounded if you use decimals): ");
end

% Rounds population by converting to integer as floats are not possible (corrects user
% error)

if isfloat(population)
   population = int64(population);
end

% Converts population back to a float in order to complete calculations
% with other doubles

population = double(population);

% Estimates average number of people per households based on 2021 Australian data

householdSize = 2.59;

% Estimated daily water usage per household (litres) based on 2023 Australian
% data

waterPerHouse = 274;

% Estimates water usage based on an average of 274 daily litres per
% person and divides by 1000 to convert litres to kilolitres

water = (waterPerHouse * (population / householdSize)) / 1000;

% Calculates percentage covered by desalination plant (daily capacity
% 300,000 kilolitres)

percentage = 3e5 / water * 100;

% If statement to prevent percentages larger than 100

if percentage >= 100
    percentage = 100;
end

% Prints the approximate daily water usage of the city from households followed by the
% percentage covered by the desalination plant

fprintf("The approximate total daily water use of the Australian city from households is %.2f kilolitres, \nbased on a population of %i, daily average of 274 litres per house and 2.59 average househould occupancy \n", water, population)
fprintf("The percentage that can be provided by the desalination plant is %.2f percent.", percentage)