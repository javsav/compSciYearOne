% This is a simple program that estimates the total daily cost of transport
% for those people driving a car based on the population of a city that is
% entered by the user. The average daily distance and registration costs
% have been obtained from viable sources and should be fairly accurate, but
% it would vary from city to city. As such a prompt is offered to change
% the cost of fuel if the user wishes. The program then calculates the daily
% cost of transportation in the city in dollars per person


% Prompts user to enter the population of the city
population = input ("What is the population of the city that you would like to estimate the total daily cost of transport for? ");

% Defines estimated variable for average daily driving (km)
averageDailyDistance = 35;

% Prompts user to enter to estimate the average fuel cost per year of the
% city
fuelCost = input ("What would you estimate your city's yearly fuel cost to be in cents per litre (e.g. 180)? ");

% Calculates daily fuel cost
costPerDay = population * averageDailyDistance * fuelCost;

% Calculates registration cost per day based on yearly average and assumes
% that only half of the population drive a car so divides by 2

registration = 685 / 365 / 2;

% Sums registration cost with daily fuel cost and converts the cost per day
% to dollars from cents

totalDailyCost = registration + (costPerDay/100);

% Prints estimated cost assuming that only 50% of people drive a car

fprintf("The total daily transportation cost for individuals who drive fuel powered cars in a city with a population of %i is %.2f dollars assuming fifty percent of the population drive cars, including registration costs",population,totalDailyCost/population/2)