function [xval, yval] = arduino_lec()
delete(instrfind({'port'},{'COM4'}))
pserial=serial('COM4','BaudRate',9600);
fopen(pserial)


%  Arduino
figure(1)
title('LECTURA ANALOGICA CON ARDUINO');
xlabel('Muestra');
ylabel('Voltaje de Salida');
muestras=1000;  
yval=zeros(1,muestras);
grid off;

    %Codigo
muestras=1000;  

hold on
for i=1:muestras
ylim([-10 1050]);
xlim([i-100 i+10]);
lectura=fscanf(pserial,'%f');
yval(i)=lectura(1);
xval(i)=i;

plot(i,yval(i),'.')
drawnow
end
hold off


figure(2)
plot(xval,yval)
title('LECTURA ANALOGICA');
xlabel('Muestra');
ylabel('Voltaje de Salida');
 ylim([1 1050]); 
xlim([1 1000]);
grid off;

fclose(pserial)
delete(pserial)
end

