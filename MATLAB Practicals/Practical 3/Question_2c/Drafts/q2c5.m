% This program defines two vectors, A and B, that only take numerical input,
% and are of the same length of values. It uses a for loop to interleave the values
% of A and B into a new vector called C. Lastly, it outputs the combined vector data
% (vector C) as a series of rounded integers separated by commas.

% Define vectors A and B
A = [1 : 100 : 401];
B = [-1 : -100: -401];

% Initialise 1-dimensional vector C of (length(A) + length(B)) number of zeros
C = zeros(1,(length(A)) + length(B));

% Interleave values from A and B into vector C
for index = 1 : length(A) 
    C(2 * index - 1) = A(index); % All odd indices of C starting from 1 : length(A) replace zero with the indices of A 
    C(2 * index) = B(index); % All even indices of C starting from 2 : length(A) replace zero with the indices of B
end

% Output the combined vector data separated by commas (vector C) until the 
% penultimate value of vector C which has no comma output after

item = 1; % Initialise value for incrementing through loop
while item < length(C) - 1 % Penultimate value
    for item = 1 : length(C) - 1 % Iterate through all values of C except the final value 
        if isa(C(item), 'double') % For the index of C referred to by the variable item, check if value is a float
            fprintf('%.0f, ', round(C(item))) % Output floats separated by commas
        elseif isa(C(end), 'char') || isa(C(end), 'string') % If not a float, check if value is a character or string
            fprintf('%s, ', C(end)) % Output strings separated by commas
        end
        item = item + 1; % Increment the value of variable item by 1 to move to the next index of vector C (until the penultimate index)
    end
end

if isa(C(end), 'double') % Check if final value of C is a float
    fprintf('%.0f\n', round(C(end))) % Output the final value of C without a comma, followed by a new line
elseif isa(C(end), 'char') || isa(C(end), 'string') % If not a float, check if value is a character or string 
    fprintf('%s\n', C(end)) % Output the final value of C without a comma, followed by a new line
end

