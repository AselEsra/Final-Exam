clear;
a= [12 6 5 13 14 14 16 15;11 10 8 5 8 11 14 14; 9 8 3 4 7 12 18 19;10 7 4 2 10 12 13 17;16 9 13 13 16 19 19 17;12 10 14 15 18 18 16 14;11 8 10 12 14 13 14 15;8 6 3 7 9 11 12 12 ];
%imshow(a/20),figure,imhist(a/20), axis tight
ph = histeq(a/20);
imshow(ph),figure,imhist(ph), axis tight