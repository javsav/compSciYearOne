% This is a simple program that estimates the total daily water usage of an
% Australian city in kilolitres from bouseholds alone based on its population and Australian average data of
% household size and daily water usage. The only input allowed is the population of the
% city, and as such, Australian government data have been used for the
% number of people per house and daily household water usage.

% Prompts user to input city population

population = input("What is the population of the city that you would like to estimate the total daily water use of? ");

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

% Defines variable based on average number of people per households based on 2021 Australian data

householdSize = 2.59;

% Defines variable for average daily water usage per household (litres) based on 2023 Australian
% data

waterPerHouse = 274;

% Performs calculation of the city's daily water usage
% and divides by 1000 to convert litres to kilolitres 

water = ((population / householdSize) * waterPerHouse) / 1000;

% Prints the approximate daily water usage of the city

fprintf("The approximate total daily water usage of a city with population %i (from households) is %.2f kilolitres based on average Australian data. \n", population, water)