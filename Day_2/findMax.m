function [ max, indiceMax ] = findMax(v) 

    % comenzar con la premisa de que el 1er elemento
    % es el máximo, e igual el índice
    max = v(1);
    indiceMax = 1;

    % barrer desde el 2do elemento
    for i = 2:length(v)
        % si un elemento es mayor que el máximo, 
        % actualizar el máximo y también el índice 
        % del máximo
        if v(i) > max
           indiceMax = i;
           max = v(i) ;
        end 
    end
    
    % después de haber recorrido todo el arreglo 1 sola vez,
    % ya se tiene el valor máximo del arreglo y su índice correspondiente
    
end

