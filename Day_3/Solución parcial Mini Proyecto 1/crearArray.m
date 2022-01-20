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
'Geometría Diferencial';
'Vibraciones';
'Mecánica Computacional';
'Programación Web';
'Teoría de conjuntos';
'Ingeniería de Materiales'
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
    
    
    
    
    
    
    
    
    
    
    
    
    
        