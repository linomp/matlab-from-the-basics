clear all; close all; clc

% OJO: Cargar SÓLO UNO de los dos:

% Trabajar con el arreglo creado por ustedes mismos
% load('miArrayDeCursos');

% Trabajar con el archivo que se provee.
load('arrayDeCursos_SOL');

%%

cursosConCuposDisponibles = obtenerDisponibles(cursos)
cursosConCuposDisponibles{:,:}


cursosIME = obtenerCursosIME(cursos)
cursosIME{:,:}


cursoConMenosInscritos = obtenerCursoConMenosInscritos(cursos) 

cursosConMenosDeOchoIns = obtenerCursosConMenosDeOchoIns(cursos)
cursosConMenosDeOchoIns{:,:}