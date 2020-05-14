function nanorough_GB
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
clear
clc
    % variable opciones va a guardar el nombre de las funciones que se
    % pueden escoger.
       
    
    opciones = {'Nueva Trayectoria','Zprom', 'Ra', 'Rq', 'Rp & Rv',...
        'Rt', 'Rz', 'Rsk', 'Salir'};
    
    % El vector 'Z' es el vector que tiene los valores de la linea que
    %cruza la imagen. Se inicializa como vector vacio y se le agregan
    %los valores conforme el funcionamiento del programa.
    Z = [];

    % Booleanos de control para saber si hay una trayectoria o no
    HayTrayectoria = false;
    
   
    
    % inicio de un ciclo para mostrar nuestro menu que terminara hasta
    % que se escoga la opcion 9 y termina el
    % ciclo.
    choice = 0;
    while choice ~= 9
        
     

       %este comando muestra el menu con todas sus opciones
        choice = menu('Escoge una Funcion',opciones);

       %lo que se ejecutará dependiendo de cada opción
           
        switch choice
           case 1
              Z = NuevaTrayectoria();
              HayTrayectoria = true;
             
              
             
                
           case 2
               if HayTrayectoria == true
               Zprom =(ZpromF(Z));
               BZprom = true;
               msgbox(sprintf('EL promedio de Z es de %f',Zprom))
               else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
               
           case 3
              if HayTrayectoria == true
              Ra = RaF(Z);
              msgbox(sprintf('El valor de Ra es: %f',Ra))
               else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
               
           case 4
               if HayTrayectoria == true
              Rq = RqF(Z);
               msgbox(sprintf('El valor de Rq es: %f',Rq))
                else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
               
           case 5
               if HayTrayectoria == true
               [Rp, Rv] = RpRvF(Z);
               BRpRv = true;
               msgbox(sprintf('El valor de Rp es: %f y el de Rv es: %f',Rp ,Rv))
                else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
               
           case 6
               if HayTrayectoria == true
               [Rp, Rv] = RpRvF(Z);
                Rt = RtF(Rp, Rv);
                msgbox(sprintf('El valor de Rt es: %f', Rt))
                 else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
              
               
           case 7
               if HayTrayectoria == true
                 P = PF(Z);
                 V = VF(Z);
                 Rz = RzF(P, V);
                  msgbox(sprintf('El valor de Rz es: %f',Rz))
                   else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
            
               
           case 8
               if HayTrayectoria == true
               Rq = RqF(Z);
               Rsk = RskF(Z, Rq);
               msgbox(sprintf('El valor de Rsk es: %f',Rsk))
                else
                   msgbox(sprintf('No a ingresado una trayectoria'))
               end
           
        end
    end
end