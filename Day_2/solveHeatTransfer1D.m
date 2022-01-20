function [T, x] = solveHeatTransfer1D(n, L, K, Q, Tb, q)
    % RECIBE: el número de nodos para armar automáticamente 
    % la matriz y vector correspondientes, y también todas las constantes 
    % del problema 
    
    % DEVUELVE: vector con las temperaturas y los puntos en la barra que
    % corresponden a esas temperaturas
    
    
    % Inicialización de la matriz de conductancia.
    A = zeros(n,n);
    A(1, 1) = 1;
    A(end, [end-1, end]) = [-1, 1];
    
    % vector que quiero insertar siguiendo el patrón
    v = [1, -2, 1];
    
    d = 0; % desplazamiento desde la izq
    
    % empezar en fila 2, terminar en la penúltima
    for i = 2:size(A, 1)-1        
        % incrementar la columna desde la cual se
        % empezará a insertar el vector [1, -2, 1]
        d = d+1;
        
        % insertar el vector v en la fila
        % i-ésima, en tres columnas contiguas
        A(i, [d, d+1, d+2]) = v;        
    end     
    
    % calcular distancia entre nodos, 
    % es decir la longitud de cada subdominio
    subdominios = n-1;
    deltaX = L/subdominios;

    % inicializar el vector de n filas y 1 columna "C"
    C = zeros(n, 1);
    % modificar directamente el 1er y último elemento
    C(1) = Tb;
    C(end) = -q*deltaX/K;
    % modificar los elementos desde el 2 hasta el penultimo
    for i = 2:length(C)-1
        C(i) = -Q*(deltaX^2)/K;
    end
        
    % otra opción:
    % C(2:end-1, 1) = -Q*(deltaX^2)/K;

    % resolver sistema de ecuaciones
    T = A\C;
    
    % los puntos en la barra que corresponden a cada una 
    % de las temperaturas obtenidas.
    % como se pidieron n puntos que van desde 0 hasta la longitud
    % total de la barra, entonces:
    x = linspace(0, L, n);
end