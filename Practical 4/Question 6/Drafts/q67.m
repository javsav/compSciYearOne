% This program loads a greyscale .png file and flips the image both
% horizontally and vertically

% Load image to be flipped horizontically and vertically
imgData = [];
newImgData = [];
imgName = "Kand"; % Name of image to be inverted
imgExt = append(imgName, ".png"); % File extension of image to be inverted
flipName = append(imgName, "Flipped420.png"); % Name of inverted image output
newImageData = imread(imgExt); % Load image to be inverted
% I = newImageData;

% Nrows = uint8(size(I,1)); 
% % Preallocate flipped version: 
% Iflip = NaN(size(I)); 
% for k = 1:Nrows
%    Iflip(k,:) = uint8(I(Nrows-k+1,:)); 
% end

dimensions = size(newImageData);
% disp(dimensions(1))
% disp(dimensions(2))

for row = dimensions(2) : -1 : 1
    [imgRow] = [];
    for col = dimensions(1) : -1 : 1
        pixelVal = newImageData(col,row);
        imgRow = [imgRow pixelVal];
    end
    imgData = [imgData; imgRow];
end

dims = size(imgData)

for row = dims(2) : -1 : 1
    [flipRow] = [];
    for col = dims(1) : -1 : 1
        pixelVal = imgData(col,row);
        flipRow = [flipRow pixelVal];
    end
    newImgData = [newImgData; flipRow];
end

newImgData = imrotate(newImgData, 180)

% flippedImg = fliplr(newImageData);
% flippedImg = flipud(flippedImg);

% Display the flipped image
imshow(newImgData);

% Save the image as originalImageNameFlipped.png
imwrite(newImgData, flipName)