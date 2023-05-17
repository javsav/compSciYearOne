% This program reads in the inputs of heights of 5 students in centimetres,
% stores them in a vector and then displays the output of each height on a
% new line.

% Creates 1 * 5 vector of zeroes

heights = zeros([1 5]);

for index = 1:5
    fprintf("Enter height of student %i (cm): ", index)
    heights(index) = input("");
end

for student = 1:5
    