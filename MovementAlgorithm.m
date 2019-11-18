%clearvars;
delta = brick.UltrasonicDist(4);
brick.SetColorMode(1, 2);
kappa = brick.ColorCode(1);
tries = 1;
while kappa == 6 || kappa == 5 
    if kappa == 5
        brick.MoveMotorAngleRel('BC', 40, 0);
        pause(3);
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
if kappa == 3
    brick.MoveMotorAngleRel('D',  40, 180);
elseif kappa == 4
    brick.MoveMotorAngleRel('D',  40, -180);
endf
