% This is a program to determine the volume of a rectangular object in cubic metres (m^3), based
% on user inputs of height, length and depth dimensions in cm. While loops
% have been used to prevent unnatural numbers as they do not make physical
% sense when calculating the volume of an object.

% Prompts the user for input of objects dimensions

height = input("What is the height of the object in cm? ");

% While loop to prevent unnatural numbers or strings

while height < 0
    height = input ("Please enter a number greater than or equal to zero: ");
end

length = input("What is the length of the object in cm? ");

% While loop to prevent unnatural numbers or strings

while length < 0
    length = input ("Please enter a value greater than or equal to zero: ");
end

depth = input("What is the depth of the object in cm? ");

% While loop to prevent unnatural numbers or strings

while depth < 0
    depth = input ("Please enter a value greater than or equal to zero: ");
end

% Calculates the volume of the object based on the products of its dimensions and divides
% by 100 to convert to cubic metres

volume = (height * length * depth) / 100;

% Prints the volume of the object as a float in cubic metres

fprintf("The volume of the object is %.2f cubic metres. \n", volume)