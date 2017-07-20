/// battle_idle_state()
battle_set_sprite(IDLE, 0);
depth = 0;

// check to see if battle timeline is running
if (o_battle.play && instance_exists(stats_object)){
    // Add to the action meter
    action_meter = min(action_meter+(stats_object.stats[? "speed"]+stats_object.level)/10, max_action_meter);
    
    // If our action meter is full, change to the action state
    if (action_meter == max_action_meter) {
        state = battle_action_state;
        o_battle.play = false;
        action_meter = 0;
    }
}
