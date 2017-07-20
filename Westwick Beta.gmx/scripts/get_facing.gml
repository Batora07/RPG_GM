/// get_facing(direction)
var dir = argument0;

var facing = round(dir/90);
if (facing == 4) facing = RIGHT;
return facing;
