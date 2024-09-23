
% 
% x=out.ScopeData
% time=x(:,1)
% y=x(:,2)
% 
% plot(time,y,'LineWidth',2,'color',[0.2,0.3,0.4])
% title('Simulink')
% set(gca, 'FontName','Times New Roman','FontSize', 14,  'FontAngle', 'italic')
% set(gcf,'color','w')
in=15;
proporcional=30;
integral=1;
derivativo=3;

s=sim('simulink_model.slx');

variable=s.ScopeData;
time=variable(:,1);
y=variable(:,2);

plot(time,y,'b')



