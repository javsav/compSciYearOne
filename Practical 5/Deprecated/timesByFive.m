Sorry, that was my error, I used the wrong terminology, it’s not input sanitisation as it’s for a function.




This is the script:




function result = timesByFive(n)




    try




        result = 5 * n;




    catch




        errID = ‘timesByFive:BadInput’;
        msgText = ‘Unable to calculate product.’;
        baseException = MException(errID,msgText);




        if nargin > 1 % Throw error if more than one input




            causeException = MException(‘MATLAB:tooManyInputs’,‘Too many input arguments.’);
            baseException = addCause(baseException, causeException);

    

            throw(baseException)  




        elseif nargin == 0 % Suggest correction if no inputs are entered




            exceptionCorrection = matlab.lang.correction.AppendArgumentsCorrection(‘1’);
            baseException = baseException.addCorrection(exceptionCorrection);




            throw(baseException)          




        end




        try
            assert(isnumeric(n),‘timesByFive:notNumeric’, … % Check if input is numeric
                ‘Input is not numeric.’)
        catch causeException
            baseException = addCause(baseException,causeException);




        end




    throw(baseException)
    
    end




end




