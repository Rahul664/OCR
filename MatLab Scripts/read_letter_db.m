function [handles,letter, comp]=read_letter_db(handles,imagn,num_letras)
% Computes the correlation between template and input image
% and its output is a string containing the letter.
% Size of 'imagn' must be 42 x 24 pixels

global template_kann
comp=[ ];
for n=1:num_letras
        sem=corr2(template_kann(:,:,n),imagn);
    comp=[comp sem];
end

max_val_a=max(comp);
        
axes(handles.axes5)
plot(comp);
title('Correlation Plot') 

vd=find(comp==max_val_a);


if vd==1
    figure,
    c = char(3205);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==2
    figure,
    c = char(3206);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==3
    figure,
    c = char(3207);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==4
    figure,
    c = char(3208);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==5
    figure,
    c = char(3209);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==6
    figure,
    c = char(3210);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==7
    figure,
    c = char(3211);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==8
    figure,
    c = char(3214);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==9
    figure,
    c = char(3215);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==10
    figure,
    c = char(3216);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==11
    figure,
    c = char(3218);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==12
     figure,
    c = char(3219);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==13
    figure,
    c = char(3220);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==14
   figure,
    c = char(3202);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==15
   figure,
    c = char(3203);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==16
   figure,
    c = char(3221);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==17
   figure,
    c = char(3222);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
elseif vd==18
   figure,
    c = char(3223);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==19
   figure,
    c = char(3224);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==20
   figure,
    c = char(3225);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==21
   figure,
    c = char(3226);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

    
elseif vd==22
   figure,
    c = char(3227);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==23
   figure,
    c = char(3228);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)


elseif vd==24
   figure,
    c = char(3229);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==25
   figure,
    c = char(3230);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==26
   figure,
    c = char(3231);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==27
   figure,
    c = char(3232);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==28
   figure,
    c = char(3233);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==29
   figure,
    c = char(3234);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==30
   figure,
    c = char(3235);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==31
   figure,
    c = char(3236);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==32
   figure,
    c = char(3237);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==33
   figure,
    c = char(3238);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
   
 elseif vd==34
   figure,
    c = char(3239);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
    
elseif vd==35
   figure,
    c = char(3240);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
 
elseif vd==36
   figure,
    c = char(3242);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
 
elseif vd==37
   figure,
    c = char(3243);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==38
   figure,
    c = char(3244);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==39
   figure,
    c = char(3245);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
    
elseif vd==40
   figure,
    c = char(3246);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==41
   figure,
    c = char(3247);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==42
   figure,
    c = char(3248);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)

elseif vd==43
   figure,
    c = char(3250);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
  
elseif vd==44
   figure,
    c = char(3253);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
 
elseif vd==45
   figure,
    c = char(3254);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
    
elseif vd==46
   figure,
    c = char(3255);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
    
elseif vd==47
   figure,
    c = char(3256);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
    
elseif vd==48
   figure,
    c = char(3257);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
    
elseif vd==49
   figure,
    c = char(3251);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18)
else
   figure,
    c = char(3200);
    text(.5,.5,c,'HorizontalAlignment','center','FontName','Arial Unicode MS','FontSize',18) 
end

