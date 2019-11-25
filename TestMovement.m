testI = 0;
while testI < 6
    turnRightAmt(brick, 90);
    delta = brick.UltrasonicDist(4);
    while Wall(delta/2.54)
        pause(0.1);
        turnLeftAmt(brick, 90); 
        delta = brick.UltrasonicDist(4);
    end
    forwardSquare(brick);
    testI = testI + 1;
    disp(testI);
end