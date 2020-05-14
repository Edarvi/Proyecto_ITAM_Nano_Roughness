function nanorough
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    % variable opciones va a guardar el nombre de las funciones que se
    % pueden escoger.
       
    
    opciones = {'Zprom', 'Ra', 'Rq', 'Rp & Rv', 'Rt', 'Rz', 'Rsk', ...
        'Salir'};
    % El vector 'Z' es el vector que tiene los valores de la linea que
    %cruza la imagen. Se inicializa como vector vacio y se le agregan
    %los valores conforme el funcionamiento del programa.
    Z = [];

    % Booleanos de control para saber si existe el valor o no
    BRpRv = false;
    BZprom = false;
    
    % inicio de un ciclo para mostrar nuestro menu que terminara hasta
    % que se escoga la opcion 8 y termina el
    % ciclo.
    choice = 0;
    while choice ~= 8
        
      %Estos comandos preguntan por las coordenadas del inicio y fin.
      %Los datos ingresados se guardan como "Cell".
      %El arreglo al final indica las dimensiones de la ventana.
       InicioX = inputdlg('Escribe la Coordenada X del inicio',...
           'Inicio X',[1 35]);
       InicioY = inputdlg('Escribe la Coordenada Y del inicio',...
           'Inicio Y',[1 35]);
       FinX = inputdlg('Escribe la Coordenada X del fin','Fin X',[1 35]);       
       FinY = inputdlg('Escribe la Coordenada Y del fin','Fin Y',[1 35]);
       
       InicioX = cell2mat(InicioX)
       InicioY = cell2mat(InicioY)
       FinX = cell2mat(FinX)
       FinY = cell2mat(FinY)
       
       InicioX = str2num(InicioX)
       InicioY = str2num(InicioY)
       FinX = str2num(FinX)
       FinY = str2num(FinY)
       
       Inicio = [InicioX InicioY]
       Fin = [FinX FinY]
       
       %se guarda la informaicion en Z
       Z = Inicio:Fin

       %este comando muestra el menu con todas sus opciones
        choice = menu('Escoge una Funcion',opciones);

       %lo que se ejecutará dependiendo de cada opción
           
        switch choice
           case 1
               fprintf('Escogió la opción #1 \n')
               Zprom = Zprom(Z);
               P = P(Z, Zprom);
               V = V(Z, Zprom);
               BZprom = true;
           case 2
               fprintf('Escogió la opción #2 \n')
               % Ra
           case 3
               fprintf('Escogió la opción #3 \n')
               % Falta Rq
           case 4
               fprintf('Escogió la opción #4 \n')
               % Regresa un vector para poder usar Rp y Rv mas facilmente,
               %RpRv(1) = Rp y RpRv(2) = Rv
               RpRv = RpRv(Z)
               BRpRv = true;
           case 5
               fprintf('Escogió la opción #5 \n')
               if BRpRv == true
                   (RpRv(1)-RpRv(2))
               else
                   msgbox(['Primero se necesitan calcular los valores' ...
                       'de Rp y Rv']);
               end
           case 6
               fprintf('Escogió la opción #6 \n')
               if BZprom == true
                   Rz(P, V)
               else
                   msgbox(['Primero se necesita calcular el valor de' ...
                       'Zprom']);
               end
           case 7
               Rsk(Z, Rq)
               fprintf('Escogió la opción #7 \n')
           case 8
               x = false;
               fprintf('Programa terminado \n')
        end
    end
end