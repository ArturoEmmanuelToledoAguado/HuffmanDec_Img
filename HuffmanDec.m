clear all;
close all;
clc;

%Cargamos los datos
load('Datos.mat');

%Decodificamos
HDecode=huffmandeco(huffCode,dic);

%Convertimos a uint8
HDecode=uint8(HDecode);

%Convertimos el vector a un array
dec_f=sqrt(length(HDecode));
dec_c=dec_f;

%Creamos la matriz
tam_vec=1;

for x=1:f
    for y=1:c
        img(x,y)=HDecode(tam_vec);
        tam_vec=tam_vec+1;
    end
end

figure
imshow(img)