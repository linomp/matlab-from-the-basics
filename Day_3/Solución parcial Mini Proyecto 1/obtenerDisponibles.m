function cursosConCupos = obtenerDisponibles(cursos)

    cursosConCupos = {};
    % cupos > inscritos
    
    for i = 1:length(cursos)
        
        if cursos{i}.cupos  > cursos{i}.inscritos 
            cursosConCupos{end+1} = cursos{i};
        end
        
    end
   

end