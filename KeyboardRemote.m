global key
InitKeyboard();
while 1
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Up Arrow Pressed!');
            forwardSquare(brick);
        case 'downarrow'
            disp('Down Arrow Pressed!');
            backwardSquare(brick);
        case 'leftarrow'
            disp('Left Arrow Pressed!');
            turnLeftAmt(brick, 90);
        case 'rightarrow'
            disp('Right Arrow Pressed!');
            turnRightAmt(brick, 90);
        case 0 % No key is being pressed
        case 'o'
            disp('Open claw');
            claw(brick, -120);
        case 'c'
            disp('Close claw');
            claw(brick, 120);
        case 'q'
            break;
    end
end
CloseKeyboard();