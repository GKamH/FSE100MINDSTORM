function forwardDistance()
    brick.ResetMotorAngle('BC'); 

    brick.MoveMotorAngleRel('BC', 50, -180, 'Brake'); 
    brick.WaitForMotor('BC'); 