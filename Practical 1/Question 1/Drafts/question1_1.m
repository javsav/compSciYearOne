% This is a program to determine the dimensions of an object in cm^3, based
% on user inputs of height, length and depth.

% Prompts the user for input of objects dimensions
height = input("What is the height of the object in cm?");
length = input("What is the length of the object in cm?");
depth = input("What is the depth of the object in cm?");

volume = height * length * depth;

% Prints the volume of the object as a float
fprintf("The volume of the object is %f centimetres cubed. \n", volume)