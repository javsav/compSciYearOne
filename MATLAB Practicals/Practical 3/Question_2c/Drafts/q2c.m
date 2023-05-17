% This program defines two vectors, A and B, that only take numerical input,
% and are of the same length of values. It uses a for loop to interleave the values
% of A and B into a new vector called C. Lastly, it outputs the combined vector data
% (vector C) as a series of rounded integers separated by commas.

% Define vectors A and B 

A = [1.2: 1.2 : 6];
B = [-1.2: -1.2: -6];

% Initialise 1-dimensional vector C of length(A) number of zeros 

C = zeros(1,(length(A)));

for cVal = 1 : 2 : length(C)
    for aVal = 1 : length(A)
        C(cVal) = A(aVal);

for cVal = 2 : 2 : length(C)
    for bVal = 1 : length(B)
        C(cVal) = B(bVal);

disp(C)
    

% % For loop iterates in reverse order from the end of B, with step negative
% % one, to the first value, and appends each to vector A
% 
% for number = length(B) : -1 : 1
%     A = [A B(number)];
% end
% 
% % For all but the final item in vector A, output the rounded integer,
% % character, or string, followed by a comma and a space
% 
% for item = 1: length(A) - 1
%     if isa(A(item), 'double')
%         fprintf('%.0f, ', A(item))
%     elseif isa(A(item), 'char') || isa(A(item), 'string')
%         fprintf('%s, ', A(item))
%     end
% end
% 
% % For the final item in vector A, output solely the rounded integer,
% % character or string (without any comma and space)
% for item = length(A)
%     if isa(A(item), 'double')
%         fprintf('%.0f', A(item))
%     elseif isa(A(item), 'char') || isa(A(item), 'string')
%         fprintf('%s', A(item))
%     end
% end
% 
% fprintf('\n')