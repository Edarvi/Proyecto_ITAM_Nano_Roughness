function nanorough
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    
   opciones = {'opcion 1', 'opcion 2', 'opcion 3', ...
       'opcion 4', 'opcion 5', 'opcion 6', 'opcion 7', 'Salir'};
   
   
  x = true; 
   while x == true
       
       choice = menu('Escoge una opción',opciones);
       
       
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

