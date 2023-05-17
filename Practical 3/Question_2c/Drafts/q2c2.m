% This program defines two vectors, A and B, that only take numerical input,
% and are of the same length of values. It uses a for loop to interleave the values
% of A and B into a new vector called C. Lastly, it outputs the combined vector data
% (vector C) as a series of rounded integers separated by commas.

% Define vectors A and B
A = [1,3,5];
B = [2,4,6];

% Initialise 1-dimensional vector C of (length(A) + length(B)) number of zeros
C = zeros(1,(length(A)) + length(B));

% Interleave values from A and B into vector C
for index = 1 : length(A) 
    C(2 * index - 1) = A(index); % All odd indices of C starting from 1 : length(A) replace zero with the indices of A 
    C(2 * index) = B(index); % All even indices of C starting from 2 : length(A) replace zero with the indices of B
end

% Output the combined vector data (vector C)
fprintf('%.0f, ', C)
    
