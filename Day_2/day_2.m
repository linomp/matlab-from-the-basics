%% CLASS 1 RECAP

% vector notation
clc
v = [1, 2]
v = [1; 2]

t = 1:10
t = 1:0.5:5 
t = linspace(1,5, 300)
v = 27:-2:14

%%  matrix exercises
% see day 1 slides for exercise statements
A = [1,7,8,4; 6,4,3,7; 2,5,9,3; 8,3,2,1]
B = [9,3,7,5; 4,1,2,8; 6,2,7,4; 1,0,3,2]
  
dot(A(1,:), B(end,:))

A(2:2:end,:) = A(2:2:end,:)*10

C = A([3, 4], [3, 4]) + B([3, 4], [3, 4])

B(1,:) = 0;
B(:,1) = 0;
B(end, :) = 0;
B(:, end) = 0;
B

A([1,2], [1,2]) = B([2, 3], [2, 3])

%% structs

students{1}.name = 'Geovanny Espinel'
students{1}.scores = [3.7, 3.5, 3.8, 3.9, 4.0]

students{2}.name = 'Tu pana'
students{2}.scores = abs(4*sin(1:5));

plot(1:5, students{1}.scores,'ro-')
hold on
plot(1:5, students{2}.scores, 'bo-')
grid on
legend(students{1}.name, students{2}.name)
 

%% DECISION MAKING
clc
a = 5;
% &&: AND,   ||: OR
b = 6;
r = (a > b) || (a > 0)
  
%%
x = 5;

% 1<x<4 ?
% (1<x) <4 
% 1 < 4 => 1

res = ((1<x) && (x<4)) && x==3


%% CONDITIONALS
clc
n = 5;

if mod(n, 2) == 0
   disp('PAR')
elseif mod(n, 3) == 0  
   disp('NO ES PAR PERO ES MULTIPLO DE 3')
else
    disp('POR DEFECTO')    
end


%% SCRIPTS & FUNCIONES
clear ; clc

% these variables will be written to global workspace
b = 3;
h = 3;
A = b*h/2;
fprintf('El área es: %.2f \n', A);

% only the extracted results will be written to 
% global workspace. Variables declared inside functions
% are local variable known only by the function itself.

% get areas and perimeters of circles of 6 different radii,
% at once!
radios = 1:6;
[ Areas, Perims ] = areaCirculo(radios)  


%% LOOPS
clc

v = [4, 5, 9];
u = [4, 5, 9];

% Ej: funcion que reciba 2 vectores y 
%     devuelve 1 si son iguales, 0 de lo contrario

% llamar a la fcn por nombre y apellido
res = vectCompare(u,v) 

% random real number between 4 and 7
a = 4;
b = 7;
a + (b-a)*rand(1,4)

% 4-by-5 random integer matrix
randi([0, 10], 4, 5)

%% CREATE TRI-DIAGONAL MATRIX
clc
v= [6,9,8,10,4];
u= [1,1,1,1];
b = [2,2,2,2];

diag(v) + diag(u,-1) + diag(b, 1)

%% 1-D HEAT TRANSFER PROBLEM
close all; clear; clc

% see slides for problem statement

L = 5;   % Longitud de barra [m]
K = 1000; % Conductividad térmica [W/mK]
Q = 3e+4;  % Fuente [W/m^3]
Tb = 500; % Temp. en la base [K]
q = 1e+5; % Flujo prescrito al final [W/m^2]

% números de nodos que se quieren probar
nodos = [6, 10, 20, 50]; 

% para que no se sobreescriban las gráficas
hold on 

% por cada elemento en el número de nodos que se quieren
% probar, llamar a la función que resuelve y graficar resultado.
% las gráficas se irán sobreponiendo (no sobreescribiendo)
for i = 1:length(nodos)
    
    n = nodos(i);
    [T, x] = solveHeatTransfer1D(n, L, K, Q, Tb, q); 
    plot(x, T)
    
end


















    






































