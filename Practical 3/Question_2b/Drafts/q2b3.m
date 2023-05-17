% This program defines two vectors, A and B, that only take numerical input,
% and then uses a for loop to append the REVERSE ORDERED values of
% B to the end of A. Lastly, it outputs the combined vector data as a series
% of rounded integers separated by commas.

% Define vectors A and B 

A = [1.2: 1.2 : 6];
B = [-1.2: -1.2: -6];

% For loop iterates in reverse order from the end of B, with step negative
% one, to the first value, and appends each to vector A

for number = length(B) : -1 : 1
    A = [A B(number)];
end

% For all but the final item in vector A, output the rounded integer,
% character, or string, followed by a comma and a space

for item = 1: length(A) - 1
    if isa(A(item), 'double')
        fprintf('%.0f, ', A(item))
    elseif isa(A(item), 'char') || isa(A(item), 'string')
        fprintf('%s, ', A(item))
    end
end

% For the final item in vector A, output solely the rounded integer,
% character or string (without any comma and space)
for item = length(A)
    if isa(A(item), 'double')
        fprintf('%.0f', A(item))
    elseif isa(A(item), 'char') || isa(A(item), 'string')
        fprintf('%s', A(item))
    end
end

fprintf('\n')