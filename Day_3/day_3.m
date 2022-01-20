%% anonymous functions
f = @(x) x.^2;

% composicion de funciones anonimas
g = @(x) 2.*f(2*x) + x; 

g([1,4,5,67,8])


%% PLOTS
clc; close all

% basico 2d

t = 1:0.1:10;
y1 = sin(t);
y2 = sin(t-pi/2);
y3 = sin(t-pi/4);

hold on
plot(t, y1, 'r--', 'linewidth', 2)
plot(t, y2, 'bp-', 'markersize', 7, ... 
    'markerfacecolor', 'r')
plot(t, y3, 'color', [0.827, 0.133, 0.533], ...
    'linewidth', 2)

xlabel('$\mu$', 'interpreter', ... 
        'latex', 'fontsize', 20)
ylabel('$\omega$', 'interpreter', ... 
        'latex', 'fontsize', 20)

nombres = {'$sin(t)$', '$\sin(t - \frac{\pi}{2})$', ...
            '$\sin(t - \frac{\pi}{4})$'};

legend(nombres, 'location', 'best', ...
        'interpreter', 'latex', 'fontsize', 12)    

% subplots
t = 1:0.1:10;
y1 = sin(t);
y2 = sin(t-pi/2);
y3 = sin(t-pi/4);

% subplot(filas, columnas, # de plot)

subplot(3, 1, 1)
    hold on
    plot(t, y1, 'r--', 'linewidth', 2)
    plot(t, y2, 'bp-', 'markersize', 7, ... 
        'markerfacecolor', 'r')
    xlabel('$\mu$', 'interpreter', ... 
        'latex', 'fontsize', 20)
    ylabel('$\omega$', 'interpreter', ... 
            'latex', 'fontsize', 20)
    
subplot(3, 1, 2)    
    plot(t, y2, 'bp-', 'markersize', 7, ... 
        'markerfacecolor', 'r')
    xlabel('$\mu$', 'interpreter', ... 
        'latex', 'fontsize', 20)
    ylabel('$\omega$', 'interpreter', ... 
            'latex', 'fontsize', 20)

subplot(3, 1, 3)
    plot(t, y3, 'color', [0.827, 0.133, 0.533], ...
        'linewidth', 2)
    xlabel('$\mu$', 'interpreter', ... 
        'latex', 'fontsize', 20)
    ylabel('$\omega$', 'interpreter', ... 
            'latex', 'fontsize', 20)
    
    
    

% fplot
figure(2)
g = @(x) 2.*f(2*x) + x; 
fplot(g, [0 10])

figure(3)
f = @(x) (x>-3 && x<0)*exp(x) + (x>=0 && x<3)*cos(x) ;
fplot(f, [-3, 3])

% plot3

t = -10:0.01:10;

x = exp(-t./10).*sin(5.*t);
y = exp(-t./10).*cos(5.*t);
z = t;
plot3(x,y,z);
grid on % siempre despues de plot

%%
% pie chart: simulación de lanzamiento de dado
evens = 0;
odds = 0;
n = 1e1;
for i = 1:n    
    num = randi([1, 6]);
    if(rem(num, 2) == 0)
        evens = evens + 1;
    else
        odds = odds + 1;
    end       
end

pie([evens, odds])
legend('pares', 'impares', 'location', 'best')

% error bar
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90]; 
err = [5 8 2 9 3 3 8 3 9 3];
errorbar(x,y,err, '-*', 'markersize', 10, ... 
    'markerfacecolor', 'r')

% histogram
nums = randn(10000, 1);
histogram(nums)


%%

% scatter y Regresión Lineal
x = randn(30,1);
y = x+rand(30,1);
[P, S] = polyfit(x,y,1);
yp = polyval(P,x);

Rsq = 1 - (S.normr/norm(y - mean(y)))^2

scatter(x,y, 'filled')
hold on
plot(x, yp)

eq = sprintf('y = %.3d*x + %.3d \nR^2 = %.3f', P(1), P(2), Rsq);

% primero dibuja todo y luego espera a que hagas clic en algún lado
% del plot para insertar ecuación de la recta ahí.
gtext(eq); 
  
%%
% dibujo de sin(t) pero animado
t = 0:0.05:10;
comet(t, sin(t)) 

% dibujo del corazón, animado
t = linspace(-pi,pi, 350);
y =  t .* sin( pi * .872*sin(t)./t );
Y = -abs(t).*cos(pi * sin(t)./t);
comet(y,Y) 
hold on
fill(y, Y, 'r'); 

% superficie 3D
[y, Y] = meshgrid(-1:0.1:10)
Z = sin(y) + cos(Y);
surf(Z, 'linestyle', 'none')
light

% contour plot con barra guía del mapa de colores
contourf(Z,10)
colorbar

% semilogx, semilogy
x = 1:1:100;
y = log(x);
loglog(y,x)

% logspace(a,b,n)
% generar n puntos desde 10^a hasta 10^b


%% ODE SOLVERS
close all; 

% ejercicio 1: voltaje en capacitor

[t, y] = ode45(@ejerODE1, [0 0.5], [2]);
y_exact = 2.*exp(-10.*t);
plot(t, y, 'ro', t, y_exact)
legend('ode45', 'exact')



% ejercicio 2: edo de 2do orden

% resolver para tiempos desde 0 a 0.5 sg
% C.I: y(0) = 3;  dy/dt(0) = -1
[t, sol] = ode45(@ejerODE2, [0 0.5], [3 -1]) ;

% aislar resultados de interés; 1era columna de sol contiene 'y'
y = sol(:, 1);
% segunda contiene dy/dt
y_punto = sol(:, 2);

figure(2)
plot(t, y) 



% ejercicio 3: péndulo simple

% resolver para tiempos desde 0 a 10 sg
% C.I: theta(0) = 0.5;  dy/dt(0) = 0
[t, sol] = ode45(@ejerODE3, [0 10], [0.5 0]) ;

% aislar resultados de interés; 1era columna de sol contiene 'theta'
theta = sol(:, 1);
% segunda contiene dy/dt
theta_punto = sol(:, 2);

figure(3)
plot(t, theta) 










