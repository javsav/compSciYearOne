% This is a program that asks the user to input 5 negative or positive
% numbers, then outputs the sum of the absolute value of each of the
% numbers

% Defines empty array of 5x1 of integer 0 (as we are going to sum those
% values together, we can add them to 0)

sumlist = zeros([1 5]);

% Prompt user for numerical inputs

fprintf("Please input five positive or negative numerical values into the dialog box, \nfor which you would like to determine the sum of their absolute values")
nums = inputdlg({'Number 1', 'Number 2', 'Number 3', 'Number 4', 'Number 5'}, 'Numbers')
while num in nums < 0
    num = abs(num)
end

disp(nums)