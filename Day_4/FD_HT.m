function FD_HT(parentAxis, To, B, H, T_left_wall, T_right_wall, T_top_wall, T_bot_wall)
    
    % Test: 
    % FD_HT(gca, 0, 0.025, 0.1, 100, 100, 100, 100)

    %Propiedades del material (AISI 1018)
    K = 51.9; % [W/m*K]   
    densidad = 7.872*10^3; % [kg/m^3]
    Cp = 486 ;% [J/(kg·K)]
    alpha = K /(densidad*Cp); %[m^2/s]


    %Generación de la red nodal 
    %(dx = dy = 0.0050 -> tamaño: 21 fil. x  6 col.) -> dt máx: 0.2346 [sg]  
    dx = 0.0025;  % m
    dy = 0.0025;  % m
    nX = (B / dx)+1; 
    nY = (H / dy)+1; 

    Temps = To*ones(nX, nY, 1);

    Temps(:,1,1) = T_left_wall;
    Temps(:,end,1) = T_right_wall;
    Temps(end,:,1) = T_top_wall;
    Temps(1,:,1) = T_bot_wall;

    max_steps = 50;
    maxBorderTemp = max([T_left_wall, T_right_wall, T_top_wall, T_bot_wall]);

    for s = 1:max_steps 
        for i = 2:nX-1
            for j =2:nY-1
                Temps(i,j,1) = (1/4)*(Temps(i-1,j,1) + Temps(i+1,j,1) + ...
                                        Temps(i,j-1,1) + Temps(i,j+1,1));
            end
        end
        [C,h] = contourf(Temps, 10, 'Parent', parentAxis);
        set(h,'LineColor','none')
        if To ~= maxBorderTemp
            caxis( [min(To, maxBorderTemp) max(To, maxBorderTemp)] ); 
        end
        colormap(jet)
        colorbar
        drawnow
    end
    
end




