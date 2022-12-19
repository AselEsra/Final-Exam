clear;
b = imread('cameraman.tif');
b2 = imdivide(b,64); 
%imshow(b2);
bb2 = immultiply(b2,64);
imshow(bb2);

% This is because we try to divide a uint8 image.
% When we divide our image (which has a range of values between 0 and 255) by 64 we will end up with an image with values 0, 1, 2, 3 and 4.
% When we multiply it back, we will get 0, 64, 128, 192, and 255, instead of the full range of values we initially had.

% If we divide and multiple with 16, 32 or other values same thing will
% happen as with previous example. We will again lose data
% but this time because we will lose less data.