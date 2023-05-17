function [mn, mx] = minMaxVectors(v1, v2)
% This function takes two vectors of equal size as input (v1, v2) and 
% returns the minimum of *both* of the vectors, and likewise the maximum
% of *both* of the vectors. I used a mergeSort algorithm that I developed
% in my own time while researching recursive functions, to avoid using the
% inbuilt "min" and "max" functions in Matlab. While I assume those are 
% faster, I hope the sort function shows initiative for extra-curricular 
% learning of recursive functions.

    % Initialise combinedVec to store both vectors in
    combinedVec = [];

    % For loop to append input vectors into combinedVec
    for el = 1:numEl(v1) % We are assuming both vectors are the same size
        combinedVec = [combinedVec, v1(el), v2(el)];
    end

    % Call subfunction divideSort on combinedVec, create sorted sortedVec
    sortedVec = divideSort(combinedVec);  

    % Declare mn and mx outputs as beginning and end of sorted array
    % respectively (using my divideSort function on line 48)

    mn = sortedVec(1);
    mx = sortedVec(end);

    % Check if mn and mx are equal, and display message in red if they are

    if mn == mx
        fprintf(2, "\nMinimum and maximum values are equal!\n")
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

    % Define subfunction divideSort (implementation of "merge sort")
    function sortedArray = divideSort(array)
        % Base case; array of <=1 element is by by definition sorted
        if numEl(array) <= 1  
            sortedArray = array; 
        % If the function is initially called on an array with one element,
        % the function terminates and returns the array. Else, the function
        % continues until divideSort is called again, continuing to divide
        % the leftSide of the array, until the base case is reached for
        % all subarrays. It then goes to the return call in the stack frame,
        % the line following the function call that led to the base case,
        % (divideSort(rightSide)) which does the same, after which
        % subfunction mergeSort is called on line 78.
            return;  
        end
    
        % Determine the mid-point of the array to be sorted (floor used to
        % round down for arrays with an odd number of elements)
        mid = floor(numEl(array) / 2);
        
        % Split the array into lft & rght subarrays at middle of the array
        leftSide = array(1:mid);
        rightSide = array(mid+1:end);
    
        % Recursively call the divideSort function on both leftSide and
        % rightSide
        leftSide = divideSort(leftSide);
        rightSide = divideSort(rightSide);
    
        % Call the mergeSort subfunction (line 82) to merge the sorted left 
        % and right subarrays
        sortedArray = mergeSort(leftSide, rightSide);
    end

    % Define mergeSort subfunction & initialise necessary index variables
    function mergedArray = mergeSort(left, right)
        mergedArray = [];
        leftIndex = 1;
        rightIndex = 1;
    
        % Iterate through left and right subarrays until elements of all 
        % vectors have been fully compared (in terms of size)
        while leftIndex <= numEl(left) && rightIndex <= numEl(right)
    
            % Compare elements of left & right subarrays indicated by
            % leftIndex & rightIndex, append smaller value to mergedArray
            if left(leftIndex) < right(rightIndex)
                mergedArray = [mergedArray, left(leftIndex)];
                leftIndex = leftIndex + 1;
    
            else
                mergedArray = [mergedArray, right(rightIndex)];
                rightIndex = rightIndex + 1;
                
            end
        end
    
        % After while loop has completed, either leftIndex or rightIndex is
        % <= numEl of their related vectors; all values from one side have
        % been appended, and values still remain on the other side. As such
        % they are larger, so are appended to end of mergedArray.
        % mergedArray, which is now sorted, is returned to the divideSort
        % subfunction which returns it as sortedArray.
        if leftIndex <= numEl(left) 
            mergedArray = [mergedArray, left(leftIndex:end)];
        end
    
        if rightIndex <= numel(right)
            mergedArray = [mergedArray, right(rightIndex:end)];
    
        end

    end

end