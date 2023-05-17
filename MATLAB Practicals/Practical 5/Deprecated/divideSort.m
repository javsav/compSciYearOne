function sortedArray = divideSort(array)
    % Base case: Array of <=1 element is by by definition sorted
    if numel(array) <= 1  
        sortedArray = array; 
    % If the function is initially called on an array with one element,
    % the function terminates and returns the array. Else, the function
    % continues until divideSort is called again, at which stage it
    % returns to the return call in the stack frame; the line following
    % the function call that led to the base case, until the base case
    % is reached for all subarrays. (e.g. after divideSort(leftSide)
    % reaches the base case, divideSort(rightSide) runs, and so on.
        return;  
    end

    % Determine the mid-point of the array to be sorted (floor used to
    % round down for arrays with an odd number of elements)
    mid = floor(numel(array) / 2);
    
    % Split the array into lft & rght subarrays at middle of the array
    leftSide = array(1:mid);
    rightSide = array(mid+1:end);

    % Recursively call the divideSort function on both leftSide and
    % rightSide
    leftSide = divideSort(leftSide);
    rightSide = divideSort(rightSide);

    % Call the mergeSort subfunction (line 77) to merge the sorted left 
    % and right subarrays
    sortedArray = mergeSort(leftSide, rightSide);
end

% Define mergeSort subfunction & initialise necessary index variables
function mergedArray = mergeSort(left, right)
    mergedArray = [];
    leftIndex = 1;
    rightIndex = 1;

    % Iterate through lft and rght vectors until numel of all elements
    % has been fully compared
    while leftIndex <= numel(left) && rightIndex <= numel(right)

        % Compare lftIndex and rghtIndex of left and right vecs, append
        % value to mergedArray and increment corresponding index by 1
        if left(leftIndex) < right(rightIndex)
            mergedArray = [mergedArray, left(leftIndex)];
            leftIndex = leftIndex + 1;

        else
            mergedArray = [mergedArray, right(rightIndex)];
            rightIndex = rightIndex + 1;
            
        end
    end

    % After while loop has completed, either lftIndex or rghtIndex is
    % less than than numel of their related vectors;all values from one
    % side have been appended,and values still remain on the other side
    % As such they are larger, so are appended to end of mergedArray.
    % mergedArray, which is now sorted, is returned to the divideSort
    % function which returns it as sortedArray.
    if leftIndex <= numel(left) 
        mergedArray = [mergedArray, left(leftIndex:end)];
    end

    if rightIndex <= numel(right)
        mergedArray = [mergedArray, right(rightIndex:end)];

    end

end

