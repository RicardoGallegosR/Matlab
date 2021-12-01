clear all 
close all
clc

% m = xlsread ("Libro1.xlsx");
% b = readmatrix ("Libro1.xlsx",'Range','A2:E15'); % Limita la matriz por los intervalos A2:E15
b = readmatrix ("Libro1.xlsx", 'Hoja' , '2'); % Lectura de variables de la hoja 2 del libro
c = readtable ("Libro2.xlsx",'PreserveVariableNames',true); % Lecturas de tablas
d = readtable ("Libro3.xlsx",'PreserveVariableNames',true); %  

  
a{1,1} = b;           % Almacenamiento en celda {1,1}
a{1,2} = c;           % Almacenamiento en celda {1,2}
a{1,3}{1,1} = d;      % Almacenamiento en celda de celdas {1,3}{1,1}

%% Comprobación 
a{1,1}(254,6)
b(254,6)

a{1,3}{1,1}(12,3)
d(12,3)
