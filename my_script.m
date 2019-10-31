close all
clear all

I = imread('photo 1.tif');
imshow(I);
level = graythresh(I);

BW = im2bw(I,level);
figure
imshow(BW)

se = strel('disk',5,0);
Ierode = imerode(BW,se); 
figure
imshow(Ierode); 

%Idilate = imdilate(BW,se);
%figure
%imshow(Idilate); 

Iopen = imdilate(Ierode,se);
figure
imshow(Iopen);


