clearvars;

% Connect the LEGO power brick to this computer
brick = ConnectBrick('TIN');

% Play tone with frequency 800Hz and duration of 500ms.  
brick.playTone(50, 800, 500);   
 
% Get current battery level.  
v = brick.GetBattVoltage();
disp(v);