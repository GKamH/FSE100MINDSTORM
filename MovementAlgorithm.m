%clearvars;
delta = brick.UltrasonicDist(4);
brick.SetColorMode(1, 2);
kappa = brick.ColorCode(1);
tries = 1;
while kappa ~= 4
    if kappa == 5 %red stop sign
        brick.MoveMotorAngleRel('BC', 40, 0);
        pause(3);
        kappa = brick.ColorCode(1);
    elseif kappa == 4 %yellow
        brick.MoveMotorAngleRel('D',  40, -180);
        kappa = brick.ColorCode(1);
    elseif kappa == 3 %white
        brick.MoveMotorAngleRel('D',  40, 180);
        kappa = brick.ColorCode(1);
    end
    if Wall(delta)
       pause(0.1);
       if tries == 1
           turnRightAmt(brick, 90);
           tries = 2;
           kappa = brick.ColorCode(1);
       elseif tries == 2
           turnLeftAmt(brick, 180);
           tries = 3;
           kappa = brick.ColorCode(1);
       elseif tries == 3
           turnLeftAmt(brick, 90);
           kappa = brick.ColorCode(1);
       end
    else
        forwardDistance();
        tries = 0;
        kappa = brick.ColorCode(1);
    end
end
