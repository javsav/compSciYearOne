% Define vector A

A = [-100 : 50 : 100];

% Define vector C

C = zeros(1,length(A));

% Replace each index of C with 2 to the power of the corresponding index
% of A

for index = 1:length(A)
    C(index) = 2^(A(index));
end

% Display the vector C

fprintf("%.4f, ", C)