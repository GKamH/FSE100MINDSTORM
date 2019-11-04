count = 1; //test2
while count <= 10
    while brick.TouchPressed(1) == 0
    end
    brick.MoveMotorAngleRel('A', 50, 180, 'Brake');
    brick.WaitForMotor('A'); 
    brick.MoveMotorAngleRel('B', 50, -180, 'Brake');
    brick.WaitForMotor('B'); 
    brick.StopAllMotors('Coast');
        while brick.TouchPressed(1) == 1
        end
            brick.MoveMotorAngleRel('A', 50, -180, 'Brake');
            brick.WaitForMotor('A'); 
            brick.MoveMotorAngleRel('B', 50, 180, 'Brake');
            brick.WaitForMotor('B'); 
            brick.StopAllMotors('Coast');
            display(count);
            count = count + 1;
end
