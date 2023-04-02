clc; clear; close all; warning off all;

% membaca citra rgb
img = imread('david beckham.jpg')
figure, imshow(img)

% mengkonversi citra rgb menjadi citra grayscale
img_gray = rgb2gray(img);
figure, imshow(img_gray)

% mendeteksi lingkaran menggunakan transformasi hough
[centers, radii, metric] = imfindcircles(img_gray, [20 50]);

% menampilkan citra hasil deteksi 
figure, imshow(img)
viscircles(centers,radii, 'Color', 'b')

