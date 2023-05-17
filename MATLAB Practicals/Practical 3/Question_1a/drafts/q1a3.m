% Define vector A

A = [-10:0.5:10];

% Define vector B

B = zeros(1,length(A));

% Replace each index of B with the cubed value of the corresponding index
% of A

for index = 1:length(A)
    B(index) = A(index)^3;
end

% Display the vector B

fprintf("%.2f, ", B)