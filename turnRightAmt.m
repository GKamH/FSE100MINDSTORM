function turnRightAmt(brick, deg)
brick.ResetMotorAngle('BC');
brick.MoveMotorAngleRel('C', 20, 60);
brick.WaitForMotor('C');
brick.MoveMotorAngleRel('B', 40, deg * 12.4);
brick.WaitForMotor('B');
brick.MoveMotorAngleRel('C', 20, -60);
brick.WaitForMotor('C');
