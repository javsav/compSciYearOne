% Prompts user to enter the population of the city
population = input("What is the population of the city that you would like to estimate the total daily cost of transport for? ");

% Defines estimated variable for average daily driving (km)
average_daily_distance = 35;

% Defines variable for average cost of fuel in cents

fuel_cost = 180;

% Calculates daily fuel cost
cost_per_day = population * average_daily_distance * fuel_cost;

% Calculates registration cost per day based on yearly average

registration = 685/365;

% Sums registration cost with daily fuel cost

total_daily_cost = registration + (cost_per_day / 100);

% Prints estimated cost assuming that only 50% of people drive a car

fprintf("The total daily transportation cost for individuals who drive fuel powered cars in a city with a population of %d is %.2f dollars assuming fifty percent of the population drive cars, including registration costs",population,total_daily_cost/population/2)
