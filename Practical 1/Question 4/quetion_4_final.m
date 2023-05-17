    % This is a simple program that estimates the total daily cost and totaly city's cost of transport
    % for those people driving a car based on the population of a city that is
    % entered by the user. The average daily distance, percentage of fuel cars driven, average daily fuel cost, and registration costs
    % vary from city to city, and so are entered as prompts. The program then calculates the daily
    % cost of transportation in the city in dollars per person and the total
    % daily cost of the entire city's fuel powered cars
    
    
    % Prompts user to enter the population of the city
    
    population = input ("What is the population of the city that you would like to estimate the total daily cost of transport for? ");
    
    % Prompts user to enter the city's average daily distance driven by fuel powered
    % cars
    
    averageDailyDistance = input ("What is the average daily distance driven in the city in kilometers (e.g. 35) ");
    
    % Prompts user to enter to estimate the average fuel cost per year of the
    % city
    
    fuelCost = input ("What would you estimate your city's average daily fuel cost to be in cents per litre (e.g. 180)? ");
    
    % Prompts user to enter the percentage of the city that drives a fuel
    % powered car
    
    percentageFuelCars = input ("What percentage of the city drives a fuel powered car? ");
    
    % Converts percentage to float
    
    percentageFuelCars = percentageFuelCars / 100;
    
    % Calculates individual daily fuel cost
    
    costPerDay = averageDailyDistance * (fuelCost / 100);
    
    % Prompts user to enter average yearly cost of registration of the city and
    % converts to daily cost by dividing by 365
    
    registration = input ("What is the city's average yearly cost in dollars of car registration (e.g. 685)? ");
    registration = registration / 365;
    
    % Sums registration cost with daily fuel cost and converts the cost per day
    % to dollars from cents
    
    totalDailyCost = registration + (costPerDay/100) * percentageFuelCars;
    
    % Calculates total daily city cost of fuel powered cars
    
    totalCityCost = totalDailyCost * population;
    
    % Prints estimated daily cost for those driving fuel powered cars
    
    fprintf("The average total daily transportation cost for individuals who drive fuel powered cars in the city is %.2f dollars, \nincluding registration costs. \n",totalDailyCost)
    
    % Prints the estimated total city's cost of the city for fuel powered cars
    % per day
    
    fprintf("The city's average total daily transportation cost from fuel powered cars with a population \nof %i is %.2f dollars, including registration costs.",population,totalCityCost)