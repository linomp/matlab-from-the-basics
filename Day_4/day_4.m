%% ODE SYSTEM

tspan = [0 10];

[t, sol] = ode45(@sistema1, tspan, ... 
                    [3, -1, 0, 0, 1]);
                
y = sol(:,1);
zdot = sol(:, 4);
plot(t, y)

%% HANDS-ON ODE PROBLEM (CHEM. ENG)

tspan = [0, 2];
CA_0 = 0:0.05:10;
diferencias = zeros(length(CA_0), 1);

for i = 1:length(CA_0)
   
    condiciones = [CA_0(i), 0, 0];
    % x = [CA, CD, CU]
    [t, sol] = ode45(@sistema2, tspan, condiciones);
    CD = sol(:, 2);
    CU = sol(:, 3);
    
    diferencia = CD(end) - CU(end);
    
    diferencias(i) = diferencia;
end 

plot(CA_0, diferencias)
% cual es el mximo, y cual es la posicion
[maximaProduccion, indice] = max(diferencias)
% como CA_0  y diferencias son paralelos, 
% el CA_0 óptimo es:
CA_0(indice)

%% PENDULUM ANIMATION

tspan = [0, 15];
[t, sol] = ode45(@pendulo, tspan, [0.5, 0]);
theta = sol(:, 1);

%plot(t, theta)


points = [ sin(theta) -cos(theta)];
origin = [0, 0];
hold on
axis ([-1 1 -1 0])
axis equal
for i = 1:length(t)    
    % origin
    plot(origin(1), origin(2), 'ko', ...
                    'markerfacecolor', 'r', 'markersize', 5)    
    % pendulum
    pendulum = line([origin(1), points(i,1)], [origin(2), points(i,2)]);                
    % path
    plot(points(i,1), points(i,2), 'g*', 'markersize', 4) 
    % Ball
    ball = plot(points(i,1), points(i,2), 'ro', ...
                    'markerfacecolor', 'r', 'markersize', 12)    
    F(i) = getframe(gcf);  % capturar frame actual (imagen)
    drawnow
    if i < length(t)
        delete(ball);
        delete(pendulum);
    end
end

v = VideoWriter('myVideo.avi', 'Motion JPEG AVI'); 
v.Quality = 100; 
open(v); 
for i=1:length(F) 
    frame = F(i) ;    
    writeVideo(v, frame);
end 
close(v);

%% SYMBOLIC CALC
syms x y
eqn = sin(x) + y;
diff( eqn, y )
int( eqn, y )

eqn = cos(x) + 4 == 3;
solve(eqn)

%
syms T(x) x 
dT = diff(T, x);
eqn = diff(dT, x) + 1000*x^2 == 0;

sol1 = dsolve(eqn, [T(0)==0, T(1)==25])
% linspace(de donde, hasta donde, cuantos pt)
dom = linspace(0,1,30);
T1 = subs(sol1, dom);
plot(dom, T1)

% subs multiples
syms Po w t
x = Po*sin(w*t);
vel = diff(x, t);
acel = diff(x, t, 2) % pedir 2da derivada

%subs(funcion, {valores viejos}, {valores nuevos})
dom = 0:0.01:5; 
acel = subs(acel, {'Po', 'w', 't'}, {10, 5, dom})
plot(dom, acel)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 20)
ylabel('$\ddot{x}$', 'interpreter', 'latex', 'fontsize', 20)


%% NUMERIC CALC

y = @(x) exp(x.^2);


integral(y, 0 , 9)

% integrar de 0 a x
dom = linspace(0, 9, 20);
I = zeros(length(dom), 1);

for i = 1:length(dom)
   I(i) = integral(y, 0, dom(i)); 
end

plot(dom, I);
figure(2)
semilogy(dom, I)

%% OPERACIONES SOBRE DATOS
t = [0:10];
a = [0,2,4,7,11,17,24,32,41,48,51];

v = cumtrapz(t,a);

% velocidad en t=3
v = trapz(t(1:3),a(1:3))

%% derivar
x = 0:pi/50:pi;
y = sin(x);% + .05*rand(1,51)-0.5;
plot(x,y)

dy_dx = diff(y)./diff(x);
hold on
plot(x(2:end), dy_dx)





















