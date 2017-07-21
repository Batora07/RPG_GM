/// battle_action_state()
battle_set_sprite(IDLE, 0);
depth = -1;

// AI 
if (object_index == o_enemy_battle_unit) {
    // check for attack and if the stats map doesn't exist
    if (ds_exists(stats, ds_type_map) && stats[? "health"] == draw_health) {
        // make the enemy attack or defend
        var action_index = 0;
        if (o_player_battle_unit.action_meter > 60 && chance(.8)) action_index = 1;
        if (chance(.05)) action_index = 1;
        
        // check for defend exception
        var action = actions[| action_index];
        if (action[? "name"] == "Defend") {
            script_execute(asset_get_index(action[? "action"]));
        } else {
            state = asset_get_index(action[? "action"]);
        }
    }
}
