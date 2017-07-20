/// battle_hit_state
battle_set_sprite(HIT, 0);

// Move the player based on the position in the animation
var input = (image_index/image_number) * pi;
x = xstart-sin(input) * 32 * image_xscale;

// check for death
if (x - xstart > 24 && stats_object.stats[? "health"] <= 0) {
    state = battle_death_state;
}

// return to the wait state
if (animation_end()) {
    state = battle_wait_state;
    x = xstart;
}
