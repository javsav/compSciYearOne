% This is a simple program that estimates the total daily water usage of an
% Australian city in kilolitres based on its population and rough estimates of
% household size and daily water usage of the city. The only input allowed is the population of the
% city, and as such, Australian government data have been used for the
% number of people per house and daily household water usage.

% Prompts user to input city population

population = input("What is the population of the city that you would like to estimate the total daily water use of? ");

% Estimates average number of people per households based on 2021 Australian data

householdSize = 2.59;

% Estimated daily water usage per household (litres) based on 2023 Australian
% data

waterPerHouse = 274;

% Estimates water usage based on an average of 100 daily litres per
% person and divides by 1000 to convert litres to kilolitres    
water = ((waterPerHouse * population / householdSize) / 1000);

% Prints the approximate daily water usage of the city

fprintf("The approximate total daily household water use of this city is %.2f kilolitres. \n", water)