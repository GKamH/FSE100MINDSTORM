global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Up Arrow Pressed!');
        case 'downarrow'
            disp('Down Arrow Pressed!');
        case 'leftarrow'
            disp('Left Arrow Pressed!');
        case 'rightarrow'
            disp('Right Arrow Pressed!');
            
        case 0 % No key is being pressed
            disp('No Key Pressed!');
            
        case 'q'
            break;
    end
end
CloseKeyboard();