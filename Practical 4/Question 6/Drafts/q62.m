% This program loads a greyscale .png file and inverts

% Load image to be flipped horizontically and vertically
imgData = [];
imgName = "Kand"; % Name of image to be inverted
imgExt = append(imgName, ".png"); % File extension of image to be inverted
flipName = append(imgName, "Flipped3.png"); % Name of inverted image output
newImageData = imread(imgExt); % Load image to be inverted

dimensions = size(newImageData);
disp(dimensions(1))
disp(dimensions(2))

for row = dimensions(2) : -1 : 1
    [imgRow] = [];
    for col = dimensions(1) : -1 : 1
        pixelVal = row;
        imgRow = [ImgRow pixelVal];
    end
    imageData = [imageData; imgRow];
end



% flippedImg = fliplr(newImageData);
% flippedImg = flipud(flippedImg);

imwrite(imageData, flipName)