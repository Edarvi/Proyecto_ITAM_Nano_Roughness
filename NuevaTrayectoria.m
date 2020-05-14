function [Z] = NuevaTrayectoria()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 %Estos comandos preguntan por las coordenadas del inicio y fin.
      %Los datos ingresados se guardan como "Cell".
      %El arreglo al final indica las dimensiones de la ventana.
       Co = inputdlg('Escribe la Coordenada X del inicio',...
           'Inicio X',[1 35]);
       Fo = inputdlg('Escribe la Coordenada Y del inicio',...
           'Inicio Y',[1 35]);
       Cd = inputdlg('Escribe la Coordenada X del fin','Fin X',[1 35]);       
       Fd = inputdlg('Escribe la Coordenada Y del fin','Fin Y',[1 35]);
       
       Co = str2double(Co);
       Fo = str2double(Fo);
       Cd = str2double(Cd);
       Fd = str2double(Fd);
       
       %Programa para crear trayectorias en (AMF) Rev Matlab 2019a
%Version general. Se deben dar los datos de origen co,fo (x1,y1) y los 
%datos de destino cd,fd (x2,y2). Si fd=fo es un vector horizontal, si
%cd=co es un vector vertical. Si es diagonal abs(fd-fo) debe ser
%igual a abs(cd-co) de otra manera da "trayectoria invalida".
%Grafica los valores de la trayectoria.
%Emplea: Imagen4AMFFinal.gif
%Solo admite 138 por 138 puntos (pixeles) 

AMF=imread('Imagen4AMFFinal.gif')
imshow(AMF) 
hold on
plot(Co, Fo,'o', Cd, Fd,'o')
axis([0 138 0 138])
grid on
hold on
x=[Co:0.1:Cd]; %definir el vector independiente
m=(Fd-Fo)/(Cd-Co); %pendiente de la recta
if m<0
    y=(m.*(x-Fd))+Fo; %vector dependiente
else
    y=(m.*(x-Fo))+Fo; %vector dependiente
end
plot(x,y,'r')
hold off


if  (Fd-Fo)==0 || abs(Fd-Fo)==abs(Cd-Co) || (Cd-Co)==0
    for n=1:138  %asegura que el vector vect tenga zeros
        vect(n)=0;
    end
    if (Fd-Fo)==0 %trayectoria horizontal
        incf=0;
    elseif (Fd-Fo)>0
        incf=1;   % diagonal hacia abajo 
    else
        incf=-1;  %diagonal hacia arriba
    end
    if (Cd-Co)==0  %trayectoria vertical
        incc=0;
    elseif (Cd-Co)>0
        incc=1;   %diagonal hacia la derecha
    else
        incc=-1;  %diagonal hacia la izquierda
    end
    if incf==0   %recorrido horizontal
         m=(abs(Cd-Co))+1;
         f=Fo;
         c=Co;
         vect(1)=AMF(Fo,Co); %primer valor en la trayectoria 
        for n=2:m
         f=f+incf;
         c=c+incc;
         vect(n)=AMF(f,c);
        end
        vectf=vect(1:m); %los m valores en la trayectoria
   elseif incc==0  %recorrido vertical
         m=(abs(Fd-Fo))+1;
         f=Fo;
         c=Co;
         vect(1)=AMF(Fo,Co); %primer valor en la trayectoria
         for n=2:m
          f=f+incf;
          c=c+incc;
          vect(n)=AMF(f,c);
         end
         vectf=vect(1:m); %los m valores de la trayectoria
   else
        %recorrido diagonal
        deltaf=abs(Fd-Fo);
        deltac=abs(Cd-Co);
       if (deltaf-deltac)==0
          m=deltaf+1;
          f=Fo;
          c=Co;
          vect(1)=AMF(Fo,Co); %primer valor en la trayectoria
          for n=2:m
            f=f+incf;
            c=c+incc;
            vect(n)=AMF(f,c);
          end
          vectf=vect(1:m); %los m valores de la trayectoria
       end
   end
   figure
   x=1:length(vectf);
   plot(x,vectf)
   axis([0 140 0 256])
   grid on
else
   disp('Trayectoria Invalida')
end
       

       
       %se guarda la informaicion en Z
       Z = vectf;
end

