% This script calculates the years between 2015 and 2041 inclusive (or any other range) that are
% divisible by four, and therefore are leap years (with some exceptions -
% if also divisible by 100 but not 400 then the year is not considered a
% leap year - this has not been coded in this script as we were not
% instructed to).

% Define vector containing years to evaluate
years = [2015 : 2041];
leapYears = []; % Declare empty vector leapYears to be appended to during the for loop

for year = 1:length(years) % For loop iterates through the years array
    if mod(years(year), 4) == 0 && years(year) ~= 0 % If the year is evenly divisible by 4 and is not == 0
        leapYears = [leapYears years(year)]; % The year is appended to the leapYears array        
    end
end

fprintf("The leap years from %i to %i inclusive are: ", years(1), years(end)) % States the range of years from which the leap years are being determined

for leapYear = 1:length(leapYears) - 1 % For all but the final leap year in the leapYears vector:
    fprintf("%i, ", leapYears(leapYear)) % Print the year followed by a comma and space
end

fprintf("%i\n", leapYears(end)) % For the final year in the leapYears vector, print the year followed by a new line (no comma or space).
