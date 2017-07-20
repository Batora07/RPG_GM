/// elizabeth_talking_state
image_speed = 0;
image_index = 0;

// check for dialog
if (!instance_exists(o_dialog)){
    state = elizabeth_move_state;
}
