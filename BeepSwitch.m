display('PUSH button to start the tone.') 
 
while brick.TouchPressed(1) == 0     
end 

display('RELEASE button to turn OFF.')

while brick.TouchPressed(1) == 1    
    brick.playTone(100, 300, 500);
    pause(0.5);
end 
