%clearvars;
delta = brick.UltrasonicDist(4);
brick.SetColorMode(1, 2);
kappa = brick.ColorCode(1);
tries = 1;
stillGoing = 1;
while stillGoing == 1
   brick.StopAllMotors('Coast');
    turnRightAmt(brick, 90);
    delta = brick.UltrasonicDist(4);
    while Wall(delta)
       pause(0.1);
       turnLeftAmt(brick, 90); 
       delta = brick.UltrasonicDist(4);
    end
    kappa = brick.ColorCode(1);
    if kappa == 5 %red stop sign
        brick.MoveMotorAngleRel('BC', 40, 0);
        pause(3);
        kappa = brick.ColorCode(1);
    elseif kappa == 4 %yellow
        brick.MoveMotorAngleRel('D',  40, -180);
        forwardSquare(brick);
        kappa = brick.ColorCode(1);
    elseif kappa == 3 % green
        brick.MoveMotorAngleRel('D',  40, -180);
        stillGoing = 0;
    elseif kappa == 6 %white
        forwardSquare(brick);
        kappa = brick.ColorCode(1);
    end
end
