function controlClutch (brick, direction)
if direction == "turn"
    deg = 50;
elseif direction == "straight"
    deg = -50;
end
brick.ResetMotorAngle('BC');
brick.MoveMotorAngleRel('B', 1, 5);
brick.MoveMotorAngleRel('C', 10, deg);
brick.WaitForMotor('C');
