% This script calculates the years between 2015 and 2041 inclusive that are
% leap years

% Define vector years
years = [2015 : 2041];
leapYears = [];

for year = 1:length(years)
    if mod(years(year), 4) == 0 && years(year) ~= 0
        leapYears = [leapYears years(year)];        
    end
end

fprintf("The leap years from %i to %i inclusive are: ", years(1), years(end))

for leapYear = 1:length(leapYears) - 1
    fprintf("%i, ", leapYears(leapYear))
end

fprintf("%i\n", leapYears(end))
