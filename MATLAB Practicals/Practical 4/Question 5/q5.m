% This program uses nested for loops to create a 2D array of pixel values
% from 0 to 255, where 0 represents the colour black, and 255 represents
% white. The image is darker at the centre and lighter at the corners.
% It then displays the image and saves it as a file called test5.png

imageData = []; % Initialise empty vector for image
imSize = 100; % Set image dimensions
numRows = imSize; 
numCols = imSize;
whitePix = 255; % The value of a white pixel to be used in calculations

% Populate imageData with 100 rows of 100 pixel values

for row = [1:numRows] % Iterate through 1:numRows
    imageRow = []; % Empty vector for row
    for col = [1:numCols] % For each row in 1:numRows, iterate through 1:numCols
        pixelVal = uint8(abs(row-imSize/2) * (whitePix/100) + abs(col-imSize/2) * (whitePix/100) / (imSize*2) * whitePix); % Calculate a pixel value decreasing toward the center of the row and increasing to the left and right of center  
        imageRow = [imageRow pixelVal]; % Add value for pixel to corresponding column index (col) of imageRow
    end
    imageData = [imageData; imageRow]; % Add rowth imageRow of numCols number of pixels to imageData, creating 2D vector    
end

% Display imageData as an image

imshow(imageData);
 
% Save as an image

imwrite(imageData,'test5.png');
