brick.ResetMotorAngle('A'); 
%brick.MoveMotorAngleRel('A', 50, 360, 'Brake'); //test1
%brick.WaitForMotor('A'); 
 
brick.MoveMotorAngleRel('A', 50, -180, 'Brake'); 
brick.WaitForMotor('A'); 
