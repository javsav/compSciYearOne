% This program defines two cells, A and B, and then 
% uses a for loop to append the values of B to the end of A and 
% finally outputs the combined data separated by commas.

% Define cells A and B (cells are used instead of vectors to allow for
% multiple primitive classes)

A = {1:4, 'a':'d'};
B = {'e':'h', 5, 6, 7, 8};

% for n = 1, B(n) is transformed to B(end), B(n+1) is transformed into
% B(end -1), and so forth until the entire cell B has been reversed
%B(:) = B(end : -1 : 1);

% For loop iterates over cell B (which is now reversed) and appends each value to the end of
% cell A

for index = B(end : -1: 1)
    A(end + 1) = B(index);
end

disp(A)

% % For loop iterates over each other than the final item in new cell A in order 
% % to print contents with values separated by commas
% 
% for item = 1:length(A) - 1
% 
% % If item is of class 'char' or 'string' it is output as a string, followed
% % by a comma and a space
% 
%     if isa(A{item}, 'string') || isa(A{item}, 'char')
%         fprintf('%s, ', A{item})      
% 
% % Else if of class 'double' the item is output as a rounded float, followed
% % by a comma and space
% 
%     elseif isa(A{item}, 'double')
%         fprintf('%0.f, ', A{item})                                         
%     end
% end
% 
% % For the final item in cell A:
% for item = length(A)
%      if isa(A{item}, 'string') || isa(A{item}, 'char')
%         fprintf('%s', A{item}) % strings are output without a comma following them  
%      else
%         if isa(A{item}, 'double') && length(A{item}) > 1
%             fprintf('%0.f, ', A{item}) % separates rounded integer output by commas for generated integers (e.g. 13:20) but leaves comma after final integer
%         elseif length(A{item}) == 1
%             fprintf('%0.f', A{item}) % no comma is displayed if the cell has manually input integers or floats (e.g. 7, 8, 9)
%         end
%     end       
% end 
% 
% fprintf('\n')