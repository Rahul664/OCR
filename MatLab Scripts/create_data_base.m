
warning off %Off all warnings
% Clear all
clc;
close all;
clear all;

%Creating data base for small letters

originalFolder = pwd; 
[baseFileName, folder] = uigetfile('*.*', 'Specify an image file'); 
fullImageFileName = fullfile(folder, baseFileName);
        
% Read in image into an array.
[imagen storedColorMap] = imread(fullImageFileName); 


% Show image
imshow(imagen);
title('INPUT IMAGE')

% Convert to gray scale
if size(imagen,3)==3 %RGB image
    imagen=rgb2gray(imagen);
end
% Convert to BW
threshold = graythresh(imagen);

imagen =~im2bw(imagen,threshold);

% Remove all object containing fewer than 30 pixels
imagen = bwareaopen(imagen,30);

%Storage matrix word from image
word=[ ];
re=imagen;

 count=1;
 index=1;
%  template_kann=ones(42,24,10);
 template_kann = false(42, 24,1);  
 
while 1
    %Fcn 'lines' separate lines in text
    [fl ,re]=lines(re);
    imgn=fl;
  
    [L ,Ne] = bwlabel(imgn); 
   
    for n=1:Ne
        [r,c] = find(L==n);
        % Extract letter
        n1=imgn(min(r):max(r),min(c):max(c));  
        % Resize letter (same size of template)
        img_r=imresize(n1,[42 24]);
        template_kann(:,:,count)=img_r;
count=count+1;
    end

    if isempty(re)  %See variable 're' in Fcn 'lines'
        break
    end    
end


