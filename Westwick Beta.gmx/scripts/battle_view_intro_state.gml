///battle_view_intro_state();

target[? "x"] = room_width*3/4;
target[? "y"] = room_height/2;

//Have we reached our target
if (point_distance(x, y, target[? "x"], target[? "y"]) < 1){
    x = target[? "x"];
    y = target[? "y"];
    state = battle_view_idle_state;
}
