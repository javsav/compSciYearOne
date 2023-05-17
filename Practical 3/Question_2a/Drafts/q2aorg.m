% This program defines two cells, A and B, and then 
% uses a for loop to append the values of B to the end of A and 
% finally outputs the combined data separated by commas.

% Define cells A and B (cells are used instead of vectors to allow for
% multiple primitive classes)

A = {1.3, "two", '3'};
B = {'json', 5, "flower", 'fish', 3:9};

% For loop iterates over cell B and appends each value to the end of
% cell A

for index = 1:length(B)
    A{end + 1} = B{index};
end

% For loop iterates over each item in new cell A in order 
% to print contents with values separated by commas

fprintf('\n')
for item = 1:length(A)

% If item is of class 'char' or 'string' it is output as a string

    if isa(A{item}, 'string') || isa(A{item}, 'char')
        if length(A) == item 
            fprintf('%s', A{item}) % If item is the final item do not output a comma after item
        else fprintf('%s, ', A{item}) % Else print comma and space
        end

% Else if of class 'double' the item is output as a rounded float

    elseif isa(A{item}, 'double')
        %A{item} = round(A{item})
        if length(A) == item && length(A{item}) > 1
%             A{item} = num2str(A{item});
%             A{item} = split(A{item}, '');
%             
%             A{item} = cell2mat(A{item});
%             A{item} = str2num(A{item});
% %             for character = 1:length(A{item})
% %                 )
% %             end
            for character = 1:length(A{item})
                if ~ A{item(character)} == (A{item(end)})
                    fprintf('%0.f, ', A{item}) % If item is the final index of A do not print the comma
                end
            end
        else fprintf('%0.f, ', A{item}) % Else print comma and space
                
            
        end
    end
end

fprintf('\n')