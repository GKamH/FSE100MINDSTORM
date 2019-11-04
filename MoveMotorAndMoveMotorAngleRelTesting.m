%brick.MoveMotor('AD', 100);
%pause(2);
%brick.StopAllMotors();

brick.ResetMotorAngle('AD'); 
brick.MoveMotorAngleRel('AD', 80, 1800, 'Brake'); 
brick.WaitForMotor('AD'); 