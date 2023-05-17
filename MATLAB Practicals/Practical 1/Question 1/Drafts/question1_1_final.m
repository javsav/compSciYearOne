% This is a program to determine the volume of a rectangular object in cubic metres (m^3), based
% on user inputs of height, length and depth dimensions in cm.

% Prompts the user for input of objects dimensions

height = input("What is the height of the object in cm? ");

if height < 0
    fprintf("Pleasae enter a positive value \n")
    height = input("What is the height of the object in cm? ");
    if height < 0
        hight

length = input("What is the length of the object in cm? ");

if height < 0
    fprintf("Pleasae enter a positive value \n")
    height = input("What is the height of the object in cm? ");
end

depth = input("What is the depth of the object in cm? ");

if height < 0
    fprintf("Pleasae enter a positive value \n")
    height = input("What is the height of the object in cm? ");
end

% Calculates the volume of the object based on the products of its dimensions and divides
% by 100 to convert to cubic metres

volume = height * length * depth / 100;

% Prints the volume of the object as a float in cubic metres

fprintf("The volume of the object is %.2f cubic metres. \n", volume)