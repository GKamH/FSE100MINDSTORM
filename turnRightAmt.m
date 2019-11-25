function turnRightAmt(brick, deg)
brick.ResetMotorAngle('BC');
controlClutch(brick, "turn");
brick.MoveMotorAngleRel('B', 40, deg * 12.4);
brick.WaitForMotor('B');
controlClutch(brick, "straight");
