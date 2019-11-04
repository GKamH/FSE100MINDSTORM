sonic = sonicSensor(brick, 4);
delta = readDistancef(sonic);
while 1
    if Wall(delta)
        pause(0.1);
        brick.ResetMotorAngle('A'); 
        brick.MoveMotorAngleRel('A', 80, 720, 'Brake'); 
    elseif (delta < 4) 
        
    elseif (delta >= 20)
        
    else
        
    end
end