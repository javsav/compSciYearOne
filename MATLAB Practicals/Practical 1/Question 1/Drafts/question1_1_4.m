% This is a program to determine the volume of an object in cubic metres (m^3), based
% on user inputs of height, length and depth dimensions in cm.

% Prompts the user for input of objects dimensions
height = input("What is the height of the object in cm? ");
length = input("What is the length of the object in cm? ");
depth = input("What is the depth of the object in cm? ");

% Calculates the volume of the object based on its dimensions and divides
% by 100 to convert to m^3

volume = height * length * depth / 100;

% Prints the volume of the object as a float
fprintf("The volume of the object is %.2f m^3. \n", volume)