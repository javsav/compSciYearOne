% This program defines two cells, A and B, and then 
% uses a for loop to append the values of B to the end of A in
% REVERSE order, and finally outputs the combined data separated by commas

% Define cells A and B (cells are used instead of vectors to allow for
% multiple primitive classes)

A = {1.3, "two", '3'};
B = {'json', 5, "flower"};

% Initialise values
charMat = 0;
tmpInd = 0;
charChange = 0;

% Split undelimited character vectors in B into individual elements
for values = 1:length(B)
    if isa(B{values}, 'char') && length(B{values}) > 1
       tmpInd = values;
       charChange = split(B{values}, '');
       charMat =  cell2mat(charChange);
    end
end

if isa(B{values}, 'char') && length(B{values}) > 1
    B{tmpInd} = [] % Replace the index of undelimited characters with empty array
    cell = 1 % Initialise cell value
    for char = 1:length(charMat)
        B{tmpInd, cell} = charMat(char) % Replace empty array with first character
        cell = cell + 1; % Increment cell value by 1 for next character
    end
end

% Initialise values
cMat = 0;
tempInd = 0;
charSplit = 0;

% Split undelimited character vectors in A into individual elements
for nums = 1:length(A)
    if isa(A{nums}, 'char') && length(A{nums}) > 1
       tempInd = nums;
       charSplit = split(A{nums}, '')
       cMat = cell2mat(charSplit);
    end
end

if isa(A{nums}, 'char') && length(A{nums}) > 1
    A{tempInd} = [] % Replace the index of undelimited characters with empty array
    block = 1 % Initialise cell value
    for val = 1:length(cMat)
        A{tempInd, block} = cMat(val) % Replace empty array with first character
        block = block + 1; % Increment cell value by 1 for next character
    end
end

% for index = 1:length(B)
%     B = {fliplr(B{index})}
% end

% For loop iterates from the end to start of cell B (reverse order) and 
% appends each value to the end of cell A

%B(end:-1:1) = B(:)
for mark = B(end : -1 : 1)
    mark = B(:);
end
 
for index = 1:length(B)
    A{end + 1} = B{index};
end

for item = 1:length(A)
         
% If item is of class 'char' or 'string' it is output as a string

    if isa(A{item}, 'string') || isa(A{item}, 'char')

% If item is the final item do not output a comma after item

        if length(A) == item
            fprintf('%s', A{item})
        else fprintf('%s, ', A{item})
        end

% Else if of class 'double' the item is output as a rounded float

    elseif isa(A{item}, 'double')
        
            fprintf('%.0f, ', A{item})        
    end
end

fprintf('\n\n')

fprintf("The raw cell is displayed below \n")

% Display the raw cell for comparison

disp(A)
