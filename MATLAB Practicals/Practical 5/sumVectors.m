function vectorSum = sumVectors(v1, v2)
% This function takes two vectors of equal length as input (v1, v2) and 
% returns the sum of all elements of v1 and v2 as a numerical value.

    % Initialise variable vectorsum
    vectorSum = 0;

    % Generate number of elements for both 1D and 2D vectors using size,
    % then calculating the product of the rows and columns as autograder
    % does not use numel function
    sizeVec = size(v1);
    vecSize = 1;

    for el = 1:length(sizeVec)
        vecSize = vecSize * sizeVec(el);
    end

    % For loop to iterate over vectors and add elements of each vector
    % to variable vectorSum
    for vecIndex = 1:vecSize % We are assuming both vectors are same size
        vectorSum = vectorSum + v1(vecIndex);
        vectorSum = vectorSum + v2(vecIndex);
    end

end

    