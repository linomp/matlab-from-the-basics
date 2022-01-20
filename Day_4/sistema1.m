function xdot = sistema1(t, x)
    
    % recibe esto:
    % t (la variable indep.) y también:
    % x = [y, dy/dt, z, dz/dt, ddz/dt^2]
    
    % debe devolver esto:
    % xdot = [dy/dt, ddy/dt^2, dz/dt, 
    %               ddz/dt^2, dddz/dt^3]
    
    m = 1/2;
    
    %si tenemos dy/dt
    xdot(1,1) = x(2);    
    % no tenemos ddy/dt^2, toca despejar
    xdot(2,1)= (5 + x(1).^2 - x(2)*exp(x(1)))/m;
    
    % si tenemos dz/dt
    xdot(3,1) = x(4);
    % tambien tenemos ddz/dt^2
    xdot(4,1) = x(5);
    % dddz/dt^3
    xdot(5,1) = t + sin( x(3) )  - x(5);  
    
end