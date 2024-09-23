function [salida] = fibonacci(aux1,aux2)
%% Esta funcion realiza la suma fibonacci
% El doble signo permite guardar información para cualdo se use el help con
% el nombre de la función 

%El uso del if se conforma de la condicion, el if y el end
% El if puede llevar condiciones &&(and) ||(or) == (igual)  ~=(no igual)
if aux1==0
salida=0;
%En el caso de necesitar una segunda condicion se emplea elseif
elseif aux1==1 && aux2==0
    salida=1;
%Y en caso de no cumplir con la condición se emplea
else
salida=aux1+aux2;
end
end

