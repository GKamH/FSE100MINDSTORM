global key
InitKeyboard();
while 1
    pause(0.1);
    switch key
        % Use brick.StopMotor(Port) to stop a motor.
        case 'uparrow'
            disp('Up Arrow Pressed!');
            forwardSquare(brick);
            disp("Next?");
        case 'downarrow'
            disp('Down Arrow Pressed!');
            backwardSquare(brick);
            disp("Next?");
        case 'leftarrow'
            disp('Left Arrow Pressed!');
            turnLeftAmt(brick, 90);
            disp("Next?");
        case 'rightarrow'
            disp('Right Arrow Pressed!');
            turnRightAmt(brick, 90);
            disp("Next?");
        case 0 % No key is being pressed
        case 'o'
            disp('Open claw');
            claw(brick, -180);
            disp("Next?");
        case 'c'
            disp('Close claw');
            claw(brick, 180);
            disp("Next?");
        case 'x'
            %White = 6
            %Red = 5
            %Yellow = 4
            %Green = 3
            disp('Read color');
            ReadColor(brick);
            disp("Next?");
        case 'q'
            break;
    end
end
CloseKeyboard();
