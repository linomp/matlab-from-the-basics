
% agregar al principio de todo script
clear; % limpiar workspace de variables declaradas antes
close all; % cerrar todas las figuras
clc; % opcional, limpiar consola

%% VARIABLES & OPERATORS

x = 5; % numeric variable
name = 'lino'; % character sequence
single = true; % boolean variable

% all basic operations supported:
2+2
x + 3
x^3

% always use parenthesis to group and concatenate operations!
x+10*2
( x+(10-1) )*2

%% VECTORS

clc
v = [1, 2, 3]; % declare row vector
u = [1; 2; 3]; % declare column vector
v = v' % traspose

nums = 1:5 % generate vect from 1 to 5 in steps of 1
nums = 1:0.5:5 % generate vect from 1 to 5 in steps of 0.5

% enteros impares entre 15 y 27
nums = 15:2:27
% enteros pares entre 15 y 27
nums = 16:2:27

% generate row vector with 30 equally spaced points between 1 and 2
% it is guaranteed that the resulting vector will contain 1 and 2.
% however, we can't control the step size.
linspace(1, 2, 30)

% step can be decreasing
nums = 3:-0.5:0

% impares entre 15 y 27 pero decreciente
27:-2:15

%% VECT ALGEBRA
clc
u = [1, 0, 0];
v = [0, 1, 0];

% traspose is required for inner dimension consistency
u*v'

% use built-in functions when possible though
dot(u, v)
cross(u, v)

% element-wise operations:  with '.' before operator
u = 2.*u
u./3
1./u
u.^2
u.*v
% modify element of a vector
u(1) = u(1) + 10


%% REPRESENTING POLYNOMIALS AS COEFFICIENT VECTORS
% [1 1 1] : 1*x^2 + 1*x + 1 
% [2 0 3 0] :  2*x^3 + 0*x^2 + 3*x + 0

% get the coefficients of a polynomial with roots in x=1 and x=-1
poly([-1 1])

%% MATRICES
% ' ; '  indicates new row
M = [1, 2, 3; 4, 5, 6];

% a 4-by-3 matrix will be generated and number 10
% will be placed in the 4,4 position
A(4,4) = 10;

% 1era fila: 0:100, 
% 2da : 101:200
f1 = 1:5;
f2 = 6:10;
B = [f1; f2] ;

% referencing matrix elements
M = [2, 4, 5, 6; 7, 1, 8, 10; 0, 9, 3, 11]

% take 2 rows at once, and columns from 2 to the last one
filas = [1, 3];
M(filas, 2:end)
% all rows, 4th col
M(:, 4)
% even rows from 1 to the last one. all columns
M(1:2:end, :)

%% LINEAR EQN SYST (EASY)
clc
% problem of the form  Ax = b
A = [2, 9; 3, 4];
b = [5; 7];
% inv(A) si en serio necesitas almacenar la inversa
%x = inv(A) * b'
% caso contrario, método recomendado:
x = A\b

% linearly dependent rows
A = [2, 9; 4, 18];
b = [5; 7];
x = A\b

%% CELL ARRAYS
clc
% see slides for a clearer representation of this data
day1 = { [60, 72, 65], [55, 57, 56; 54, 56, 55; 52, 55, 53] }
day2 = { [57, 675, 15], [linspace(0, 15, 5); linspace(4, 30, 5)] }
days = {day1, day2}

% acceder al dia 1
days{1}
% acceder al elemento 2 de l dia 1
days{1}{2}
% acceder a la fila 1 del elemento 2 del dia 1
days{1}{2}(1, :)

% agregar nuevo elemento al cell array
days{end+1} = {[1,2,3], [1 2 3; 4 5 6]}

%% STRUCTS
clc
% see slides for a diagram on structs

% creación de struct (implicita) y asignación de propiedades
student1.name = 'Geova';
student1.scores = [3.7, 3.5, 3.8, 3.9, 4.0];
student1.fac = 'IIN';

student2.name = 'Tu pana';
student2.scores =  abs( 4*sin(1:1:5) );
student2.fac = 'IME';

% cell array con dos structs que contienen 
% propiedades de estudiantes
students = {student1, student2}

% acceder al primer estudiante
students{1}
% acceder a los puntajes del 1er estudiante
students{1}.scores

%% plot 2D (easy)
% 
% x = 1:0.1:10;
% y = sin(x);
% plot(x, y, 'r-o')

% plot the scores of both students, overlayed
gpa1 = students{1}.scores;
gpa2 = students{2}.scores;
hold on
plot( 1:5, gpa1 , 'r-o')
plot( 1:5, gpa2 , 'b-o')
grid on

name1 = students{1}.name;
name2 = students{2}.name;
legend(name1, name2)


%% STRUCT EJEMPLO REAL

% persistencia: guardar datos en un archivo en disco
% se va a crear un .mat
x = 5;
save('students_15_02', 'students', 'days', 'x')

%%
% cargar (revisar que archivo 'truss1_data.mat' esté en mismo directorio que este archivo)
load('truss1_data')

hold on

i = elements{1}.nodes{1}
j = elements{1}.nodes{2}
line([i(1), j(1)], [i(2), j(2)], ...
    'marker', 'o', 'markerfacecolor', ...
    'r', 'color', 'b');
   

i = elements{2}.nodes{1}
j = elements{2}.nodes{2}
line([i(1), j(1)], [i(2), j(2)], ...
    'marker', 'o', 'markerfacecolor', ...
    'r', 'color', 'b');


i = elements{3}.nodes{1}
j = elements{3}.nodes{2}
line([i(1), j(1)], [i(2), j(2)], ...
    'marker', 'o', 'markerfacecolor', ...
    'r', 'color', 'b');


i = elements{4}.nodes{1}
j = elements{4}.nodes{2}
line([i(1), j(1)], [i(2), j(2)], ...
    'marker', 'o', 'markerfacecolor', ...
    'r', 'color', 'b');