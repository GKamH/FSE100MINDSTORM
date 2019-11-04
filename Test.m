%Negative Angle for motor C for same direction movement
%Positive Angle for motor C for turn
%50 degrees is the magic number
clear all;

% Connect the LEGO power brick to this computer
brick = ConnectBrick('TIN');
turnLeftAmt(brick, 90);
turnRightAmt(brick, 90);
backwardDistance();
forwardDistance();