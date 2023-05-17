% This is a program that generates and sums five random integers between 1
% and 10.

% Declares empty result variable (not using array as it uses more memory)

result = 0;

% For loop to generate and sum five random integers from 1 to 10 inclusive

for range = 1:5
    result = result + randi(10, 1);
end

fprintf("The result of the sum of the five randomly generated integers between 1 and 10 inclusive is %i\n", result)
