% This program reads in the inputs of heights of 5 students in centimetres,
% stores them in a vector and then displays the output of each student's height
% on a new line.

% Creates 1 * 5 vector of zeroes

heights = zeros([1 5]);

% For loop to prompt for input of student height in cm with nested while
% loop to prevent inputs of 0 or less

for student = 1:5
    fprintf("Enter height of Student %i (cm) as a numerical value: ", student)
    heights(student) = input("");

    while heights(student) <= 0
        heights(student) = input("Please enter a value greater than zero cm: ");
    end
end

% For loop to display each student's height in cm with a new line before and after
% each printed height using disp() (this could also be achieved with fprintf("\n
% The height of Student %i is %.2f cm\n", student, heights(student)) 

for student = 1:5
    disp(heights(student))
end