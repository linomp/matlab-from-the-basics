function xdot = sistema2(t, x)

    % x = [CA, CD, CU]
    
    % xdot = [dCA/dt, dCD/dt, dCU/dt]
    
    k1 = 3;
    k2 = 1;
    
    xdot(1,1) = -k1*(x(1)) - k2*( x(1).^2 );
    xdot(2,1) = k1*x(1);
    xdot(3,1) = k2*( x(1).^2 );
    

end