function nanorough
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    % variable opciones va a guardar el nombre de las funciones que se
    % pueden escoger.
         %hay que cambiar el nombre de "opcion n" a el nombre
         % de la funcion que queremos llamar (hasta ahora solo funciona
         % como un nombre, no afecta el nombre aqui con el de las funciones
         % reales
   opciones = {'opcion 1', 'opcion 2', 'opcion 3', ...
       'opcion 4', 'opcion 5', 'opcion 6', 'opcion 7', 'Salir'};
   
   % inicio de un ciclo para mostrar nuestro menu que terminara hasta que
   % se escoga la opcion 8 que cambia x = false y termina el ciclo.
  x = true; 
   while x == true
       
       %este comando muestra el menu con todas sus opciones
       choice = menu('Escoge una Funcion',opciones);
       
       
       %lo que se ejecutará dependiendo de cada opción
            %(Hace falta llenar esto)
       if choice == 1;
           fprintf('Escogió la opción #1 \n')
       
       elseif choice == 2;
           fprintf('Escogió la opción #2 \n')
           
       elseif choice == 3;
           fprintf('Escogió la opción #3 \n')
           
       elseif choice == 4;
           fprintf('Escogió la opción #4 \n')
        
       elseif choice == 5;
           fprintf('Escogió la opción #5 \n')
       
       elseif choice == 6;
           fprintf('Escogió la opción #6 \n')
           
       elseif choice == 7;
           fprintf('Escogió la opción #7 \n')
      
       else choice == 8;
           x = false;
           fprintf('Programa terminado \n')
       end
       
       


end

