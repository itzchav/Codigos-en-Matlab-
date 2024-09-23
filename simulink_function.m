
function [time,y] = simulink_function(in, proporcional)
%  in=15;
%  proporcional=30;
integral=1;
derivativo=3;

%% Guardar en el workspace
assignin('base','in',in)
assignin('base','integral',integral) 
assignin('base','derivativo',derivativo) 
assignin('base','proporcional',proporcional) 

s=sim('simulink_model.slx');

variable=s.ScopeData;
time=variable(:,1);
y=variable(:,2);
% figure(1)
% plot(time,y,'LineWidth',2,'color',"#FF00FF")
end

