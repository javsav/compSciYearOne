% This program uses nested for loops to create a 2D array of pixel values
% with columns 255 to 3, where 255 represents the colour white, and 0 
% represents black. The image is lighter on the left side and darker on the right.
% It then displays the image and saves it as a file called test4.png

imageData = []; % Initialise empty vector for image
imSize = 100; % Set image dimensions
numRows = imSize; 
numCols = imSize;
whitePix = 255; % The value of a white pixel to be used in calculations

% Populate imageData with 100 rows of 100 pixel values

for row = [1:numRows] % Iterate through 1 to numRows
    imageRow = []; % Empty vector for row
    for col = [1:numCols] % For each row in 1:numRows, iterate through 1:numCols
        pixelVal = uint8((imSize - col + 1)/imSize * whitePix); % Calculate a pixel value for each column in range 255:3; each column decreases by 2 or 3
        imageRow = [imageRow pixelVal]; % Add value for pixel to corresponding column index (col) of imageRow
    end
    imageData = [imageData; imageRow]; % Add rowth imageRow of numCols number of pixels to imageData, creating 2D vector    
end

% Display imageData as an image

imshow(imageData);
 
% Save as an image

imwrite(imageData,'test4.png');
