 

a=arduino('COM4','UNO');
writeDigitalPin(a,'D9',1)

for i=1:10
writeDigitalPin(a,'D9',1)
pause(0.5)
writeDigitalPin(a,'D9',0)
pause(0.5)
end