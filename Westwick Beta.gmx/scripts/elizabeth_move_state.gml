///elizabeth_move_state()
/// Movement
var hspd = (o_input.right - o_input.left) * spd;
var vspd = (o_input.down - o_input.up) * spd;

/// Move
if (!move(hspd, vspd, true)) {
    move_intented_direction(hspd, vspd, 10);
}

// Check for the menu
if (o_input.back){
    if (!instance_exists(o_menu_ui)){
        instance_create(16, 16, o_menu_ui);
        exit;
    }
}

// Check for random encounter
if (!instance_exists(o_last_encounter)) {
    instance_create(x, y, o_last_encounter);
    o_last_encounter.distance = random_range(32, room_width/2);
} else {
    if (point_distance(x, y, o_last_encounter.x, o_last_encounter.y) >= o_last_encounter.distance){
        o_last_encounter.distance = random_range(32, room_width/2);
        o_last_encounter.x = x;
        o_last_encounter.y = y;
        encounter();
    } 
}

// Get the direction we are facing
var xdir = lengthdir_x(8, facing*90);
var ydir = lengthdir_y(8, facing*90);

// Check for the interactable object
activate_interactable_object(xdir, ydir);
