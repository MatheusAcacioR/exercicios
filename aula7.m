close all;           #RESETA SISTEMA
clear all; 

 [a,map] = imread('pcb1bin.png');         #LER IMAGEM
 a = a*255;
 figure
 imshow(a);
 pause

 b = imfill(a,'holes'); %fillHoles            #PREENCHER BURACOS
 figure
 imshow(b);
 pause
 
 c = imabsdiff(a,b); % Sub a-b           #DIFERENÇA A-B
 figure
 imshow(c)
 %pause
 
 SE = strel('square', 16);  #ABERTURA 
 d = imopen(b, SE);
 figure
 imshow(d);
 %pause;
 
 e = bitand(d, a);   #BIT DE RESULTADO QUANDO AMBOS FOREM VERDADEIROS
 figure
 imshow(e);
 pause
 
 SE = strel('rectangle',[8 25]);  #ABERTURA 
 f = imopen(b, SE);
 figure
 imshow(f);
 pause;
 
 g = bitand(f, a);   #BIT DE RESULTADO QUANDO AMBOS FOREM VERDADEIROS
 figure
 imshow(g);
 pause