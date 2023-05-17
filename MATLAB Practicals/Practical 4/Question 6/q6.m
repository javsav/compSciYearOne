% This script loads a greyscale .png file and flips the image both
% horizontally and vertically. Note that flipping along both the
% horizontal and vertical axes is equivalent to rotating the image
% 180 degrees, however I have included some inversions as this was
% not readily apparent to me, and I believe that the code has value.
% As such, lines 19 to 45 are not of functional value to THIS code.

% Load image to be flipped horizontically and vertically and define output
% image name

orgImgName = "Kand"; % Name of image to be inverted (without file extension)
imgExt = append(orgImgName, ".png"); % Append file extension to image to be inverted
flipName = append(orgImgName, "Flipped.png"); % Name of inverted image output to be appended to orgImgName
newImageData = imread(imgExt); % Load original image into 2D vector to be inverted 

% Check and define dimensions of original image in pixels
dimensions = size(newImageData);

% Define empty vectors for storing intermediate flipped vectors 
imgData = []; 
newImgData = [];

% Transformation 1: Invert along the horizontal axis and rotate clockwise
% 90 degrees (NOT FUNCTIONALLY NECESSARY)

for row = dimensions(2) : -1 : 1 % 
    [imgRow] = [];
    for col = dimensions(1) : -1 : 1
        pixelVal = uint8(newImageData(col,row));
        imgRow = [imgRow pixelVal];
    end
    imgData = [imgData; imgRow];
end

dims = size(imgData);

% Transformation 2: Rotate clockwise by an additional 90 degrees and
% invert along the vertical axis, returning to the original image
% (NOT FUNCTIONALLY NECESSARY)

for col = dims(2) : -1 : 1
    [flipper] = [];
    for row = dims(1) : -1 : 1
        pixelVal = uint8(imgData(row,col));
        flipper = [flipper pixelVal];
    end
    newImgData = [newImgData; flipper];
end

% Perform a rotation by 180 degrees of original image vector newImageData
% to obtain the horizontally and vertically flipped image

% Create a 2D vector of zeros with dimensions equal to the original image
% vector for the horizontal/vertically reflected vector to be stored in
flippedImg = uint8(zeros(dimensions(1), dimensions(2)));

% Rotate the vector by 180 degrees using nested for loops
for colIndex = 1:dimensions(1) % Iterate through 1:499 columns
    for rowIndex = 1:dimensions(2) % Iterate through 1:501 rows
        % Populate filppedImg matrix with pixel values for colums and rows
        % in reverse order relative to original vector
        % (e.g. newImageData(1,1) == flippedImg(499,501), newImageData(3,2)
        % == flippedImg(497,500)
        flippedImg(dimensions(1) - colIndex + 1, dimensions(2) - rowIndex + 1) = newImageData(colIndex, rowIndex); 
    end
end

% Display the flipped image
imshow(flippedImg);

% Save the image as originalImageNameFlipped.png
imwrite(flippedImg, flipName)