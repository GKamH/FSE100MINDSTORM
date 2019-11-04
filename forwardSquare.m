function forwardSquare(brick)
brick.ResetMotorAngle('BC');
brick.MoveMotorAngleRel('C', -50)
brick.MoveMotorAngleRel('B', 1080);
brick.WaitForMotor('B');