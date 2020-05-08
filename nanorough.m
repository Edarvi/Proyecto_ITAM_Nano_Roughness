function nanorough
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    % variable opciones va a guardar el nombre de las funciones que se
    % pueden escoger.
         %hay que cambiar el nombre de "opcion n" a el nombre
         % de la funcion que queremos llamar (hasta ahora solo funciona
         % como un nombre, no afecta el nombre aqui con el de las funciones
         % reales
    opciones = {'opcion 1', 'opcion 2', 'opcion 3', 'opcion 4', ...
        'opcion 5', 'opcion 6', 'opcion 7', 'Salir'};
        % El vector 'Z' es el vector que tiene los valores de la linea que
        %cruza la imagen. Se inicializa como vector vacio y se le agregan
        %los valores conforme el funcionamiento del programa.
    Z = [];
        % inicio de un ciclo para mostrar nuestro menu que terminara hasta
        % que se escoga la opcion 8 que cambia x = false y termina el
        % ciclo.
    x = true; 
    while x == true

       %este comando muestra el menu con todas sus opciones
        choice = menu('Escoge una Funcion',opciones);

       %lo que se ejecutará dependiendo de cada opción
            %(Hace falta llenar esto)
        switch choice
           case 1
               fprintf('Escogió la opción #1 \n')
           case 2
               fprintf('Escogió la opción #2 \n')
           case 3
               Rq
               fprintf('Escogió la opción #3 \n')
           case 4
               fprintf('Escogió la opción #4 \n')
               RpRv(Z)
           case 5
               fprintf('Escogió la opción #5 \n')
           case 6
               fprintf('Escogió la opción #6 \n')
           case 7
               Rsk(Z, Rq)
               fprintf('Escogió la opción #7 \n')
           case 8
               x = false;
               fprintf('Programa terminado \n')
        end
    end
end