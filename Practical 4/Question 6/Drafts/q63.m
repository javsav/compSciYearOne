% This program loads a greyscale .png file and inverts

% Load image to be flipped horizontically and vertically
imgData = [];
imgName = "Kand"; % Name of image to be inverted
imgExt = append(imgName, ".png"); % File extension of image to be inverted
flipName = append(imgName, "Flipped4.png"); % Name of inverted image output
newImageData = imread(imgExt); % Load image to be inverted

dimensions = size(newImageData);
vFlip = NaN(dimensions(1), dimensions(2)); % Initialise empty 2D vector for flipped image 

for row = 1:dimensions(2)
    vFlip(row,:) = newImageData(dimensions(2)) - row + 1, :);
end


% flippedImg = fliplr(newImageData);
% flippedImg = flipud(flippedImg);

% Display the flipped image
imshow(imageData);

% Save the image as originalImageNameFlipped.png
%imwrite(imageData, flipName)