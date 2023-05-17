% This is a program to determine the volume of a rectangular object in cubic metres (m^3), based
% on user inputs of height, length and depth dimensions in cm.

% Prompts the user for input of objects dimensions

height = input("What is the height of the object in cm? ");

if height < 0
    fprintf("Please enter a value greater than or equal to zero \n")
    height = input("What is the height of the object in cm greater than -1? ");
    if height < 0
        height = input("Entering a natural number is highly recommended ");
    end
end

length = input("What is the length of the object in cm? ");

if length < 0
    fprintf("Please enter a value greater than or equal to zero \n")
    length = input("What is the height of the object in cm greater than -1? ");
    if length < 0
        length = input("Entering a natural number is highly recommended ");
    end
end

depth = input("What is the depth of the object in cm? ");

if depth < 0
    fprintf("Please enter a value greater than or equal to zero \n")
    depth = input("What is the height of the object in cm greater than -1? ");
    if depth < 0
        depth = input("Entering a natural number is highly recommended ");
    end
end

% Calculates the volume of the object based on the products of its dimensions and divides
% by 100 to convert to cubic metres

volume = height * length * depth / 100;

% Prints the volume of the object as a float in cubic metres

fprintf("The volume of the object is %.2f cubic metres. \n", volume)