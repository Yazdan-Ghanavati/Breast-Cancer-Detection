% yazdan ghanavati
% y.ghanavati79@gmail.com
% breast cancer detection using Thermogram image processing
% 6/29/2023

clc % clear command window
clear all % clear variables
close all % closes graphical windows
%%%%%%%%%%%%%%%%%%%%%%


Path = 'C:\Users\yghan\Desktop\Breast-Cancer-Detection\Data\*.jpg'; % Address of database
Files=dir(Path); % Reading All The informations of 'Path'

sigma = 0.4 ;% Amplitude of edges
alpha = 0.5 ; % Smoothing of details 

for i=1:length(Files) % All Images Will Batchload Here
   
    fn = [Path(1:end-5) Files(i,1).name]; % fn includes address and name of the image

    im=imread(fn); % Getting All The Images from fn matrice
    im1=rgb2gray(im); % Converting To Gray For Diagnosis And Processing
    im2=histeq(im1); % Forcing The Histogram Equalization
    im3=medfilt2(im2,[3,3]); % Applying the Median Filter 
    im4=locallapfilt(im3,sigma,alpha); % Applying Laplacian Filter

    % feature extraction
    im5=im2double(im4); % Converting Image To Double
    f1=max(im5(:)); % Maximum temprature
    f2=min(im5(:)); % Minimum Temprature
    f3=mean(im5(:)); % Average of Temprature
    f4=std(im5(:)); % Standard Deviation
    f5=entropy(im5(:)); % Entropy of Pation
    f6=kurtosis(im5(:)); % Finfing the Kurtosis of an Image
    f7=skewness(im5(:)); % Statistic Feature
    
    Feature(i,:)=[f1,f2,f3,f4,f5,f6,f7]; % Putting All The Features in Each Image Individualy

end

figure()
imshow(im); % Showing The Last Image
title('Raw Image'); % Not Processed Image


figure()
imshow(im1); % Showing The Gray Matrice
title('Gray Scale Image'); % Converted Image To Gray


figure()
imshow(im2); % Histogram Equalizated Image
title('After Applying Histeq'); % Title of First PreProcessing Method


figure()
imhist(im1); % Histogram Before Histeq
title('before Applying Histeq');

figure()
imhist(im2); % Histogram After Histeq
title('After Applying Histeq');

figure()
imshow(im3); % After Applying Median Filter 
title('After Applying MED Filter');

figure()
imshow(im4); % After Applying Laplacian Filter 
title('After Applying LapLacian Filter');
