%Programa para crear trayectorias en (AMF) Rev Matlab 2019a
%Version general. Se deben dar los datos de origen co,fo (x1,y1) y los 
%datos de destino cd,fd (x2,y2). Si fd=fo es un vector horizontal, si
%cd=co es un vector vertical. Si es diagonal abs(fd-fo) debe ser
%igual a abs(cd-co) de otra manera da "trayectoria invalida".
%Grafica los valores de la trayectoria.
%Emplea: Imagen4AMFFinal.gif
%Solo admite 138 por 138 puntos (pixeles) 

AMF=imread('Imagen4AMFFinal.gif');
imshow(AMF) 
co=1; %x1
fo=1; %y1
cd=138; %x2
fd=138; %y2
if  (fd-fo)==0 || abs(fd-fo)==abs(cd-co) || (cd-co)==0
    for n=1:138  %asegura que el vector vect tenga zeros
        vect(n)=0;
    end
    if (fd-fo)==0 %trayectoria horizontal
        incf=0;
    elseif (fd-fo)>0
        incf=1;   % diagonal hacia abajo 
    else
        incf=-1;  %diagonal hacia arriba
    end
    if (cd-co)==0  %trayectoria vertical
        incc=0;
    elseif (cd-co)>0
        incc=1;   %diagonal hacia la derecha
    else
        incc=-1;  %diagonal hacia la izquierda
    end
    if incf==0   %recorrido horizontal
         m=(abs(cd-co))+1;
         f=fo;
         c=co;
         vect(1)=AMF(fo,co); %primer valor en la trayectoria 
        for n=2:m
         f=f+incf;
         c=c+incc;
         vect(n)=AMF(f,c);
        end
        vectf=vect(1:m); %los m valores en la trayectoria
   elseif incc==0  %recorrido vertical
         m=(abs(fd-fo))+1;
         f=fo;
         c=co;
         vect(1)=AMF(fo,co); %primer valor en la trayectoria
         for n=2:m
          f=f+incf;
          c=c+incc;
          vect(n)=AMF(f,c);
         end
         vectf=vect(1:m); %los m valores de la trayectoria
   else
        %recorrido diagonal
        deltaf=abs(fd-fo);
        deltac=abs(cd-co);
       if (deltaf-deltac)==0
          m=deltaf+1;
          f=fo;
          c=co;
          vect(1)=AMF(fo,co); %primer valor en la trayectoria
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


