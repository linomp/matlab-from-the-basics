function cursoConMenosInscritos = obtenerCursoConMenosInscritos(cursos) 
    
    menorNumeroDeIns = inf;
    cursoConMenosInscritos = [];
    
    for i = 1:length(cursos)
        
        if cursos{i}.inscritos < menorNumeroDeIns
            cursoConMenosInscritos = cursos{i}
            menorNumeroDeIns = cursos{i}.inscritos;
        end
        
    end
   

end