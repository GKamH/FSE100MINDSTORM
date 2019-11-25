function forwardSquare(brick)
controlClutch(brick, "straight");
brick.MoveMotor('B', -80);
pause(5);
brick.StopMotor('B'); 
