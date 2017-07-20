///battle_return_state();
var targetx = xstart;
var spd = 12;
battle_set_sprite(RETURN, 0);

// Calculate the image speed
var frames = get_frames(targetx, xstart + BATTLE_SPACE * image_xscale, spd);
image_speed = get_image_speed_from_frames(frames, image_number);

x = approach(x, targetx, spd);
if (x  == targetx) {
    state = battle_idle_state;
    o_battle.play = true;
}
