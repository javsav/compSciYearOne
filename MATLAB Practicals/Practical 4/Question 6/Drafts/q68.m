% This program loads a greyscale .png file and flips the image both
% horizontally and vertically

% Load image to be flipped horizontically and vertically
imgData = [];
newImgData = [];
imgName = "Kand"; % Name of image to be inverted
imgExt = append(imgName, ".png"); % File extension of image to be inverted
flipName = append(imgName, "Flipped96.png"); % Name of inverted image output
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

angle_deg = 180; % Replace 45 with the desired rotation angle in degrees
angle_rad = deg2rad(angle_deg);
rotationMatrix = [cos(angle_rad), -sin(angle_rad); sin(angle_rad), cos(angle_rad)];
flippedImg = rotationMatrix * newImgData;

% N=length(newImgData);
% flippedImg = zeros(dims(2), dims(1));
% for i=1:N
%     for j=1:N
%     flippedImg(j,N-i+1)=newImgData(i,j);
%     end
% end

% flippedImg = fliplr(newImageData);
% flippedImg = flipud(flippedImg);

% Display the flipped image
imshow(newImgData);

% Save the image as originalImageNameFlipped.png
imwrite(newImgData, flipName)