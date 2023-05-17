% This program loads a greyscale .png file and inverts

% Load image to be flipped horizontically and vertically
imgName = "Kand";
imgExt = append(imgName, ".png")
newImageData = imread(imgExt);
flipName = append(imgName, "Flipped2.png")
% whos newImageData
% dimensions = size(newImageData);
% disp(dimensions(2))

flippedImg = fliplr(newImageData);
flippedImg = flipud(flippedImg);

imwrite(flippedImg, flipName)