function remoteCont(brick)
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
            controlClutch(brick, "straight");
            brick.MoveMotorAngleRel('B', -20, -60);
            pause(.5);
            brick.StopMotor('B'); 
        case 'downarrow'
            controlClutch(brick, "straight");
            brick.MoveMotorAngleRel('B', -20, 60);
            pause(.5);
            brick.StopMotor('B'); 
        case 'leftarrow'
            %GET ANGLEREL FOR CLUTCH
           
        case 'rightarrow'
            %GET ANGLEREL FOR CLUTCH
      
        case 'q'
            break;
    end
end
CloseKeyboard();
return;