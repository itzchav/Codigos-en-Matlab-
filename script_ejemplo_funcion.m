%Puntos random

%La funcion randi tiene como parametros un rango en el que se presentaran
%los numeros y el tamaño de la matriz en este caso es de 5 fila x 1 columna

x= randi([0 3],5,1)
y= randi([-1, 1],5,1)
%Funcion 
ejemplo
% Plot de trayectoria
plot(x,y,'*')
