///battle_use_item_state()
// enemies can't use items
if (object_index != o_player_battle_unit) {
    state = battle_wait_state;
    exit;
}

// change sprites
change_sprites(s_battle_elizabeth_use_item, 0, .25);

if (animation_hit_frame(0)){
    // set the view state
    o_battle_view.target[? "x"] = xstart + 64 * image_xscale;
    o_battle_view.state = battle_view_focus_state;
}

// use the item
if (animation_hit_frame(5)) {
    use_item_index(item_index);
}

// return to the idle state
if (animation_end()) {
    with (o_battle_unit) {
        state = battle_wait_state;
        o_battle_view.state = battle_view_idle_state;
    }
}
