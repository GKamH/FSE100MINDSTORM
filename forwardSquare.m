function forwardSquare(brick)
brick.MoveMotorAngleRel('C', 40, -60);
brick.MoveMotor('B', -80);
pause(5);
brick.StopMotor('B'); 

