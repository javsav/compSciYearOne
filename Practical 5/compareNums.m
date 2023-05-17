function [sm, bg] = compareNums(x, y)
% This function receives two input arguments, x and y, and returns
% two output arguments: small first (sm), followed by big (bg). If
% the inputs are equal in size, a message is printed
% in red stating as such, but the values are still returned. As a fun
% extension, if vectors are entered, the code also compares the sums
% of each vector and returns sm as the sum of the smaller vector and bg as
% the sum of the larger vector.

    % Throw error using assert if inputs are not numerals
    assert(isnumeric(x), 'Inputs must be numeric')
    assert(isnumeric(y), 'Inputs must be numeric')

    % Initialise variables for vector sums
    xVecSum = 0;
    yVecSum = 0;

    % For loops to account for both numeral inputs and vector inputs
    for el = 1:numEl(x)
        xVecSum = xVecSum + x(el);        
    end

    for el = 1:numEl(y)
        yVecSum = yVecSum + y(el);
    end

    % Conditional statement to inform (in red) when inputs are equal
    if xVecSum == yVecSum
        fprintf(2,'\nBoth inputs are equal in value!\n')
        sm = yVecSum;
        bg = xVecSum;
   

    % Conditional statement to check larger input
    elseif xVecSum > yVecSum
        sm = yVecSum;
        bg = xVecSum;

    else
        sm = xVecSum;
        bg = yVecSum;

    end

    % Define subfunction numEl due to autograder not recognising matlab
    % numel function
    function noe = numEl(n)
        % Calculate number of elements of n - whether numeral, 1D, or
        % multi-D vector using size, then calculating the product of the
        % rows and columns (if multi-dimensional vector)
        sizeVec = size(n);
        noe = 1;
    
        for element = 1:length(sizeVec)
            noe = noe * sizeVec(element);
        end

    end

end

    