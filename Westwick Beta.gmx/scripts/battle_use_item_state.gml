///battle_use_item_state()
// enemies can't use items
if (object_index != o_player_battle_unit) {
    state = battle_idle_state;
    exit;
}

// change sprites
change_sprites(s_battle_elizabeth_use_item, 0, .25);

// use the item
if (animation_hit_frame(5)) {
    use_item_index(item_index);
}

// return to the idle state
if (animation_end()) {
    with (o_battle_unit) {
        state = battle_idle_state;
    }
}
