% This is a simple program that estimates the otal daily cost of transport
% for those people driving a car based on the population of a city that is
% entered by the user. The average daily distance and registration costs
% have been obtained from viable sources and should be fairly accurate, but
% it would vary from city to city. As such a prompt is offered to change
% the distance if the user wishes. The program then calculates the daily
% cost of transportation in the city in dollars per person

% ChatGPT wrote this script that converts integers into strings, I did this
% just for fun, it is not plagiarism as I have acknowledged I did not write
% it and it is not necessary for the program, just for a bit of fun!
 
% ChatGPT script to convert integers to strings that represent the integer.
function words = int2words(num)

% Define word arrays
ones_words = {'', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'};
tens_words = {'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'};
tens_mult_words = {'', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'};
scale_words = {'', 'Thousand', 'Million', 'Billion', 'Trillion'};

% Split number into groups of three digits
num_groups = ceil(log10(num+1)/3);
num_str = num2str(num, '%0*d', num_groups*3);
num_arr = strsplit(num_str, '');

% Convert each group of three digits into words
words_arr = cell(1, num_groups);
for i = 1:num_groups
    group_start = (i-1)*3+1;
    group_end = i*3;
    group = str2double(num_arr(group_start:group_end));
    
    % Convert hundreds place
    if group(1) > 0
        words_arr{i} = [ones_words{group(1)}, ' Hundred '];
    end
    
    % Convert tens and ones place
    if group(2) == 1
        words_arr{i} = [words_arr{i}, tens_words{group(3)+1}];
    else
        if group(2) > 1
            words_arr{i} = [words_arr{i}, tens_mult_words{group(2)}];
        end
        if group(3) > 0
            words_arr{i} = [words_arr{i}, ones_words{group(3)}];
        end
    end
    
    % Add scale word if necessary
    if i < num_groups && group(1)+group(2)+group(3) > 0
        words_arr{i} = [words_arr{i}, ' ', scale_words{num_groups-i+1}];
    end
end

% Combine words from each group and remove excess whitespace
words = strtrim(strjoin(words_arr));
end



% Prompts user to enter the population of the city
population = input("What is the population of the city that you would like to estimate the total daily cost of transport for? ");

% Defines estimated variable for average daily driving (km)
averageDailyDistance = 35;

% Prompts user to enter to estimate the average fuel cost per year of the
% city
fuelCost = input("What would you estimate your city's yearly fuel cost to be in cents per litre (e.g. 180)? ");

% Calculates daily fuel cost
costPerDay = population * averageDailyDistance * fuelCost;

% Calculates registration cost per day based on yearly average

registration = 685/365;

% Sums registration cost with daily fuel cost and converts the cost per day
% to dollars from cents

totalDailyCost = registration + (costPerDay / 100);

% Prints estimated cost assuming that only 50% of people drive a car

fprintf("The total daily transportation cost for individuals who drive fuel powered cars in a city with a population of %s is %.2f dollars assuming fifty percent of the population drive cars, including registration costs",string(population),totalDailyCost/population/2)
