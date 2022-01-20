function [ max, indiceMax ] = findMax(v) 

    % comenzar con la premisa de que el 1er elemento
    % es el m�ximo, e igual el �ndice
    max = v(1);
    indiceMax = 1;

    % barrer desde el 2do elemento
    for i = 2:length(v)
        % si un elemento es mayor que el m�ximo, 
        % actualizar el m�ximo y tambi�n el �ndice 
        % del m�ximo
        if v(i) > max
           indiceMax = i;
           max = v(i) ;
        end 
    end
    
    % despu�s de haber recorrido todo el arreglo 1 sola vez,
    % ya se tiene el valor m�ximo del arreglo y su �ndice correspondiente
    
end

