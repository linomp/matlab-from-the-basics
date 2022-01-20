function xdot = ejerODE2(t,x)

    % m*(d2y/dt^2) + (dy/dt)*e^(y) - y^2 = 5

    % elementos de x son todas las derivadas menores
    % a la mayor que aparezca en la ecuacion
    % x(1) -> y
    % x(2) -> dy/dt
    
    m = 1/2;
    
    xdot(1, 1) = x(2);
    
    % todos los archivos terminan en algo así, 
    % la mayor derivada expresada en términos de 
    % las de menor orden
    xdot(2, 1) = ( 5 + (x(1).^2) - x(2).*exp( x(1) ) )./m;
   
    
end