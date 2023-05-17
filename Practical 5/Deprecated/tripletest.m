function product = tripletest(n)

% This function receives a double input (n) and returns a product
% of value (n * 3) - three times the input parameter. It also includes
% some input checking - will throw an error if a string or character
% vector is entered, or too many inputs. Will suggest correction if no
% inputs are entered.    

    try
        assert(isnumeric(n),'triple:notNumeric', 'Input is not numeric.')
    catch
        errID = 'triple:BadInput';
        msgText = 'Unable to calculate product.';
        baseException = MException(errID,msgText);

        if nargin > 1 % Throw error if more than one input
            causeException = MException('MATLAB:tooManyInputs','Too many input arguments.');
            baseException = addCause(baseException, causeException);

            throw(baseException)

        elseif nargin == 0 % Suggest correction if no inputs are entered
                exceptionCorrection = matlab.lang.correction.AppendArgumentsCorrection('1');
                baseException = baseException.addCorrection(exceptionCorrection);

                throw(baseException)
        end
              
    throw(baseException)
    
    end

product = 3 * n;
        
end
    



    