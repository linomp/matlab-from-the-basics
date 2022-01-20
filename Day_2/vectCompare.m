function [sonIguales] = vectCompare(v1,v2) 

    % si son de distinta longitud, directamente
    % son diferentes. asignar 0 (o false) al resultado
    % y cortar la ejecución con return
    if length(v1) ~=length(v2)
        sonIguales = 0;
        return
    end
    
    % en este punto ya sabemos que tienen la 
    % misma long. pero nos falta comparar los elementos
    
    % barrer por todos los elementos de ambos vectores
    for i = 1:length(v1)
        % comparar el elemento i-esimo
        % del vector 1 con el el elemento i-esimo
        % del vector 2. Apenas sean diferentes en 1 elemento,
        % asignar 0 (o false) al resultado
        % y cortar la ejecución con return
       if v1(i) ~= v2(i)  
          sonIguales = 0;
          return
       end 
    end
    
    % si se ha barrido por todos los elementos
    % y no se ha encontrado diferencia,
    sonIguales = 1;    

end

