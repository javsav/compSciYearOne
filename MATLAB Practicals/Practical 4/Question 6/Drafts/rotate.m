% Define the vector
vec = [1:10; 2:11];

% Get the dimensions of the vector
[rows, cols] = size(vec);

% Create an empty array for the rotated vector
rotated_vec = zeros(rows, cols);

% Rotate the elements of the vector by 180 degrees using for loops
for i = 1:rows
    for j = 1:cols
        rotated_vec(rows - i + 1, cols - j + 1) = vec(i, j);
    end
end

% Display the original and rotated vectors
disp('Original vector: ');
disp(vec);
disp('Rotated vector: ');
disp(rotated_vec);