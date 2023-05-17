% This program uses nested for loops to create a 2D array of pixel values
% with columns 3 to 255, where 255 represents the colour white, and 0 
% represents black. The image is darker on the left side and lighter on the right.
% It then displays the image and saves it as a file called test3.png

imageData = []; % Initialise empty vector for image
imSize = 100; % Set image dimensions
numRows = imSize; 
numCols = imSize;
whitePix = 255; % The value of a white pixel to be used in calculations

% Populate imageData with 100 rows of 100 pixel values

for row = [1:numRows] % Iterate through 1 to numRows
    imageRow = []; % % For each row in 1:numRows, iterate through 1:numCols
    for col = [1:numCols]
        pixelVal = uint8((col/imSize) * 255); % Calculate a pixel value for each column in range 3:255; each column increases by 2 or 3
    imageRow = [imageRow pixelVal];  % Add value for pixel to corresponding column index (col) of imageRow
    end
    imageData = [imageData; imageRow]; % Add rowth imageRow of numCols number of pixels to imageData, creating 2D vector     
end


% Display imageData as an image

imshow(imageData);
 
% Save as an image

imwrite(imageData,'test3.png');
