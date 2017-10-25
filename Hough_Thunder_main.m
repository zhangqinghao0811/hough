clearvars;
close all;
target = imread('target.jpg');
pic = imread('test.jpg');
target = rgb2gray(target);
pic = rgb2gray(pic);
target = target<50;
pic = pic<50;
figure;imshow(target);
figure;imshow(pic);
threshold = 0.9;%阈值,0.9代表90%以上吻合才被认为是目标
pic_thunder = Hough_Thunder(pic,target,threshold);%输入图像需要为logical型,false为背景
figure;
imshow(pic_thunder);