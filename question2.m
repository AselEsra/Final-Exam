clear;
img = imread('cameraman.tif');
f = fspecial('average',3);
imgf = filter2(f,img);
%imshow(imgf/255);
imgUnmask = double(img) - imgf/1.5;  % we divide our blurred img in order to make it lighter 
% subtract blurred img from org img in order to get sharper img
imshow(imgUnmask/70);
