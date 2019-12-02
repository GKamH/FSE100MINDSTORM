global key
InitKeyboard();
%claw motor is d
%right motor is b
%left motor is c
%I'm assuming motor A is on the right and Motor D is on the right
%Motor d is claw
while 1
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Up Arrow Pressed!');
            brick.ResetMotorAngle('A');
            brick.MoveMotorAngleRel('A', 80, 720, 'Brake');
            brick.WaitForMotor('A');
        case 'downarrow'
            disp('Down Arrow Pressed!');
            brick.ResetMotorAngle('A');
            brick.MoveMotorAngleRel('A', 80, -360, 'Brake');
            brick.WaitForMotor('A');
        case 'leftarrow'
            %GET ANGLEREL FOR CLUTCH
           
        case 'rightarrow'
            %GET ANGLEREL FOR CLUTCH
            
        case 'w' %close
            %ALL NUMBERS ARE TENTATIVE
            brick.MoveMotor('C', 40);
            pause(2);
            brick.MoveMotorAngleRel('C', 40, 360, 'Brake');
        case 's' %close
            %ALL NUMBERS ARE TENTATIVE
            brick.MoveMotor('C', 40);
            pause(2);
            brick.MoveMotorAngleRel('C', 40, -360, 'Brake');
        case 'q'
            break;
    end
end
CloseKeyboard();
_______________________