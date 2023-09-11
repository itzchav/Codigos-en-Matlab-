function [] = ejemplo_funcion()
% Las funciones no siempre tienen entradas o salidas
% Cuando esto se requiere es debido a codigos que se repiten de forma exacta
%Por ejemplo un codigo que grafique obstaculos: 

% Coordenadas y tamaños de los obstaculos

rectangles = [
    1.03,                0,       .145,            0.33;  %obstaculo 1
    1.03,      -0.66-0.715,       .222,           0.715;  %obstaculo 2
     2.3,        -0.5-0.15,        .36,            0.15;  %obstaculo 3
];
%% Crear Rectangulos
% Dibujar los rectángulos
for i = 1:size(rectangles, 1)
    rectangle('Position', rectangles(i, :), 'EdgeColor', 'k', 'LineWidth', 0.5);
    hold on; % Para mantener los rectángulos en el mismo plot y poder graficar puntos despues  
end
%Permite graficar en esta misma figura al llamarlo en un script
hold on;
end

