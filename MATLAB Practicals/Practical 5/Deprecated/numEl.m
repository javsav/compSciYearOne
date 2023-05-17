function noe = numEl(n)
% Calculate number of elements of n - whether numeral, 1D, or multi-D
% vector using size, then calculating the product of the rows and
% columns (if 2D vector) as autograder does not use numel function

    sizeVec = size(n);
    noe = 1;

    for element = 1:length(sizeVec)
        noe = noe * sizeVec(element);
    end

end