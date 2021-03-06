clear all
close all
clc
%% Paleta de colores
color = [140,  17,  62;...
         140,  39, 113;...
          29, 106, 115;...
          68, 242, 143;...
         140, 131,   3;...
         217,  82,  94;...
          12,  46,  89;...
          23,  80, 115;...
          46, 140, 131;...
           5, 242, 175]/255;
%% Punto de estudio
latCorp =  19.393775908724052;
lonCorp = -99.23690661697096;

%% Socios Horizontales
Coor =[19.425533721232913,-99.20335573582649; ...
       19.428925276660305,-99.20676802553913; ...
       19.447263693618275,-99.21044720126245; ...
       19.407539264253728,-99.27135691107004; ...
       19.417032795910913,-99.13332040777524; ...
       19.400431067399055,-99.27424978109303];

SS = ["Facebook","Google","Banco de M\'exico","DHL","ATM","Data Center"];
S2 = ["FB","Google","BM","DHL","ATM","DC"];

graficar (Coor,SS,S2,latCorp,lonCorp,color,1)
%% Latitud, Longitud 
geolimits([19.415 19.419],[-99.28 -99.11])

function graficar (Coor,SS,S2,CLAT,CLON,color,n)
    figure(n)
    for i =1:length(Coor)
        geoplot([Coor(i,1) CLAT],[Coor(i,2) CLON],'-^','LineWidth',2,'Color',color(i+1,:)...
            );
        text(Coor(i,1),Coor(i,2),SS(i),'Interpreter','latex','FontSize',18);
        hold on
    end
    figure(n)
    title ("\textbf{Poligonal n\'ucleo SVN-SOCIOS}",...
        'Interpreter','latex','FontSize',25)
    text(CLAT,CLON,"N\'ucleo",...
        'Interpreter','latex','FontSize',15);
    %% Máximizar plot
    frame_h = get(handle(gcf),'JavaFrame');
    set(frame_h,'Maximized',1);
    %% Tipo de mapa
    geobasemap 'topographic'
    %% Simbología 
    a = legend(S2,'Location','bestoutside','NumColumns',1,'Interpreter','latex'...
        ,'FontSize',20,'LineWidth',1.3);
    title(a,"\textbf{Simbolog\'ia}",'Interpreter','latex','FontSize',20)
    
    set(gca,'FontSize',20,'FontName','Times New Roman')
 end

