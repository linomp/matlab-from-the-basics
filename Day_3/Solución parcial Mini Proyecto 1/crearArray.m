clear all; close all; clc

Dptos = {
            'MAT';
            'IME';
            'IME';
            'ADC';
            'MAT';
            'IME'
        };

Nombres = {
'Geometr�a Diferencial';
'Vibraciones';
'Mec�nica Computacional';
'Programaci�n Web';
'Teor�a de conjuntos';
'Ingenier�a de Materiales'
};

Cupos = [
            35;
            10;
            20;
            24;
            25;
            20;
        ];

Inscritos = [
                35;
                7;
                10;
                28;
                4;
                20;
            ];
        
        
cursos = cell(1,length(Cupos));        
        
for i = 1:length(Cupos) 
    
    cursos{i}.dpto = Dptos{i};    
    cursos{i}.nombre = Nombres{i};    
    cursos{i}.cupos = Cupos(i);        
    cursos{i}.inscritos = Inscritos(i);
    
end
    
    
    
    
    
    
    
    
    
    
    
    
    
        