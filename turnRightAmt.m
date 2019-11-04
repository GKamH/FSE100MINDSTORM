function turnRightAmt(brick, deg)
brick.ResetMotorAngle('BC');
brick.MoveMotorAngleRel('B', 40, deg * 12.4);
brick.WaitForMotor('B');
