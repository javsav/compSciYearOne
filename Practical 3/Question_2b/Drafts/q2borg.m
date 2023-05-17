% For this problem you have to create a program that defines two vectors of numbers: 
% A and B and uses a for-loop to combine the values of A and B. 
% Note that different parts of the question below specify different orders for combining the elements.


% Define vectors A and B

A={'a', 'b'};
B={6:12};


% For loop iterates over vector B and appends each value to the end of
% vector A

for index = 1:length(B)
    A = [A B(index)];
end

% Output vector A
% if isfloat(A(1):A(length(A)))
%     fprintf('%.2f, ', A)
%         
% else
%     
%     fprintf('%s, ', A)
%         
% end
for item = 1:length(A)

    if isa(A{item}, 'char')
        fprintf('%s, ', A{item})
    else fprintf('%.2f, ', A{item})

    end
end