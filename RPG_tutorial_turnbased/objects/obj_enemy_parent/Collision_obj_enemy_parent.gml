// this pushes away other enemies so they don't overlap (as much)
var push = 1;
x -= lengthdir_x(push,point_direction(x,y,other.x,other.y));
y-= lengthdir_y(push,point_direction(x,y,other.x,other.y));