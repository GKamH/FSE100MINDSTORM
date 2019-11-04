function [ifWall] = Wall(d)
    if (d < 12) 
        ifWall = true;
    else 
        ifWall = false;
    end
end