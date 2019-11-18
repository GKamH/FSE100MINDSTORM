%clearvars;
delta = brick.UltrasonicDist(4);
brick.SetColorMode(1, 2);
kappa = brick.ColorCode(1);
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
