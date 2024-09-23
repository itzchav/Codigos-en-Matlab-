function [f] = funcion_fibonacci(num)
%En el vector f se almacenan los valores del numero de fibonacci
f=zeros(1,num+1);
%En los primeros espacios se almacena el valor de 0 y 1 
%Hay que recordar que en matlab no existe la posicion 0 en un arreglo
f(1)=fibonacci(0,0);
f(2)=fibonacci(1,0);
%Se manda a llamar la funcion despues del tercer elemento 
for i=3:1:num+1
    f(i)=fibonacci(f(i-1),f(i-2));
end
%Muestra el arreglo obtenido
f

%Para mandar a llamar la funcion se realiza de la siguiente forma ya sea en
%otro script o en la ventana de comandos

%funcion_fibonacci(15)
end

