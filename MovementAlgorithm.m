clearvars;
sonic = sonicSensor(brick, 4);
delta = readDistancef(sonic);
color = colorSensor(brick, 1);
kappa = readColor(color);
tries = 1;
while kappa == white || kappa == red   
    if kappa == red
        brick.MoveMotorAngleRel('BC', 40, 0);
    end
    if Wall(delta)
       pause(0.1);
       if tries == 1
           turnRightAmt(brick, 90);
           tries = 2;
       elseif tries == 2
           turnLeftAmt(brick, 180);
           tries = 3;
       elseif tries == 3
           turnLeftAmt(brick, 90);
       end
    else
        forwardDistance();
        tries = 0;
    end
end
if kappa == green
    brick.MoveMotorAngleRel('D',  40, 180);
elseif kappa == yellow
    brick.MoveMotorAngleRel('D',  40, -180);
end
