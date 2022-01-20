function xdot = ejerODE3(t,x) 

    % elementos de x son todas las derivadas menores
    % a la mayor que aparezca en la ecuacion
    % x(1) -> theta
    % x(2) -> d(theta)/dt
    
    g = 9.81;
    L = 1;
    
    % derivada de x(1) es d(theta)/dt, es decir x(2)
    xdot(1, 1) = x(2);
   
    % todos los archivos terminan en algo así, 
    % la mayor derivada expresada en términos de 
    % las de menor orden
    xdot(2, 1) = (-g*L) *sin( x(1) );
   
    
end