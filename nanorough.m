function nanorough
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    % variable opciones va a guardar el nombre de las funciones que se
    % pueden escoger.
         %hay que cambiar el nombre de "opcion n" a el nombre
         % de la funcion que queremos llamar (hasta ahora solo funciona
         % como un nombre, no afecta el nombre aqui con el de las funciones
         % reales
    opciones = {'Zprom', 'Ra', 'Rq', 'Rp & Rv', 'Rt', 'Rz', 'Rsk', ...
        'Salir'};
        % El vector 'Z' es el vector que tiene los valores de la linea que
        %cruza la imagen. Se inicializa como vector vacio y se le agregan
        %los valores conforme el funcionamiento del programa.
    Z = [];
        % inicio de un ciclo para mostrar nuestro menu que terminara hasta
        % que se escoga la opcion 8 que cambia x = false y termina el
        % ciclo.
    x = true;
        % Booleanos de control para saber si existe el valor o no
    BRpRv = false;
    BZprom = false;
    
    while x == true

       %este comando muestra el menu con todas sus opciones
        choice = menu('Escoge una Funcion',opciones);

       %lo que se ejecutará dependiendo de cada opción
            %(Hace falta llenar esto)
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
               Rq(Z)
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
               fprintf('Escogió la opción #7 \n')
               Rsk(Z, Rq)
           case 8
               x = false;
               fprintf('Programa terminado \n')
        end
    end
end