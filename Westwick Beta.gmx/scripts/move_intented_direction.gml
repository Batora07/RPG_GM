///move_intented_direction(hspd, vspd, distance)
var hspd = argument0;
var vspd = argument1;
var distance = argument2;

// check for wall
var wall = instance_place(x+hspd, y+vspd, o_solid);

// make sure there is a wall
if (wall) {
    switch(facing) {
        case UP:       
        case DOWN:
            if (hspd != 0) exit; //no need to slide if we already have hspd
            for (var i=0; i < distance; i+=spd){
            // moving to the right
                if (!place_meeting(x+i, y+vspd, o_solid)) {
                    move(spd, 0, false);
                    break;
                }
                // moving to the left
                if (!place_meeting(x-i, y+vspd, o_solid)) {
                    move(-spd, 0, false);
                    break;
                }
            }
        break;
        
        case RIGHT:
        case LEFT:
            if (vspd != 0) exit; // no need to slide if we already have vspd
            for (var i=0; i < distance; i+=spd) {
                // moving up
                if (!place_meeting(x+hspd, y-i, o_solid)) {
                    move(0, -spd, false);
                    break; 
                }
                // moving down
                if (!place_meeting(x+hspd, y+i, o_solid)) {
                    move(0, spd, false);
                    break;
                }
            }
            break;
    }
}
