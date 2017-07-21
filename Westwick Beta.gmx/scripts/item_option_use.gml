///item_option_use()
if (instance_exists(parent)) {
    with(parent) {
    // are we in a battle
        if (instance_exists(o_player_battle_unit)) {
            o_player_battle_unit.state = battle_use_item_state;
            o_player_battle_unit.item_index = index;
            instance_destroy();
        } else {
            // use item
            use_item_index(index);
            
            // destroy the menu
            if (instance_exists(o_menu_ui)) {
                with (o_menu_ui) instance_destroy();
            }
            instance_destroy();
        }
    }
} 
