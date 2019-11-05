function   handles= main_func_live(handles)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    cam_int=webcam;

img = snapshot(cam_int);
imshow(img)
d=rgb2gray(img);
axes(handles.axes7)
imshow(d);
name='Image captured';

  

imagen=img;
axes(handles.axes1)
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
axes(handles.axes8)
imshow(imagen);

%Storage matrix word from image
word=[ ];
re=imagen;

% Load templates

load template_kann
global template_kann

num_letras=size(template_kann,3);
num_plate=[];
while 1
    %Fcn 'lines' separate lines in text
    [fl, re]=lines(re);
    imgn=fl;

    [L, Ne] = bwlabel(imgn);    
    for n=1:Ne
        [r,c] = find(L==n);
        % Extract letter
        n1=imgn(min(r):max(r),min(c):max(c));  
        % Resize letter (same size of template)
        img_r=imresize(n1,[42 24]);
axes(handles.axes3)
imshow(img_r);        
  
[handles,~,~]=read_letter_db(handles,img_r,num_letras);
        
      end    
end

end


