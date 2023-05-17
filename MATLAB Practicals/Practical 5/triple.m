function product = triple(n)
% This function receives a numerical (n) and returns a product
% of value (n * 3) - three times the input parameter. I wanted
% to learn how to use try and catch, so it also includes some input
% checking - will throw an error if a string or character vector is 
% entered and will suggest correction if no inputs are entered. 

    try % Check if the input is numeric (throw error for strings/chars)
        assert(isnumeric(n))
    catch
        errID = 'triple:BadInput'; % Error ID
        msgText = 'Unable to calculate product.'; % Error message 
        baseException = MException(errID,msgText); % Defining baseException

        if nargin == 0 % If num arguments in is zero
                % Suggest correction to input 1 if no inputs are entered
                exceptionCorrection = ...
                    matlab.lang.correction.AppendArgumentsCorrection('1');
                % Add suggestion to change input to display after error
                % message text
                baseException = ...
                    baseException.addCorrection(exceptionCorrection);

                throw(baseException) % Throw error + suggested correction
        end
              
    throw(baseException) % Throw error if input is not numeric
    
    end
    
% Otherwise, return the product 3 * n
product = 3 * n;
        
end
    



    