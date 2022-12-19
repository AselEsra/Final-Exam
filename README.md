Earthquake-Data
==================================================================

- Name and Surname: Asel Esra Ozyilmaz
- Email: esra.ozyilmaz@iaau.edu.kg
- Computer Science Department of Alatoo International University.
- Final Exam results for Image Proccessing class.

## 1st Question

clear;
b = imread('cameraman.tif');

b2 = imdivide(b,64); 

bb2 = immultiply(b2,64);

imshow(bb2);

-  **A)** This is because we try to divide a uint8 image. When we divide our image (which has a range of values between 0 and 255) by 64 we will end up with an image with values 0, 1, 2, 3 and 4. When we multiply it back, we will get 0, 64, 128, 192, and 255, instead of the full range of values we initially had.

-  **B)** If we divide and multiple with 16, 32 or other values same thing will
happen as with previous example. We will again lose data
but this time because we will lose less data.

## 2nd Question

clear;

img = imread('cameraman.tif');

f = fspecial('average',3);

imgf = filter2(f,img);

blurred = imgf/255;

imgUnmask = double(img) - imgf/1.5; 

sharpened = imgUnmask/70;

figure, montage({blurred,sharpened}); 


> we divide our blurred img in order to make it lighter 

> Later we subtract our blurred img from org img in order to get sharper img.


## 3rd Question

clear;
a= [12 6 5 13 14 14 16 15;11 10 8 5 8 11 14 14; 9 8 3 4 7 12 18 19;10 7 4 2 10 12 13 17;16 9 13 13 16 19 19 17;12 10 14 15 18 18 16 14;11 8 10 12 14 13 14 15;8 6 3 7 9 11 12 12 ];

imshow(a/20),figure,imhist(a/20), axis tight

ph = histeq(a/20);

imshow(ph),figure,imhist(ph), axis tight
