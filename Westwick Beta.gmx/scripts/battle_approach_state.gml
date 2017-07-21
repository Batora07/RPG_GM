/// battle_approach_state()
var targetx = xstart + BATTLE_SPACE * image_xscale;
battle_set_sprite(APPROACH, 0);
var spd = min(28, 64/image_number);

// calculate image speed
var frames = get_frames(targetx, xstart, spd);
image_speed = get_image_speed_from_frames(frames, image_number);

// set the view state
o_battle_view.target[? "x"] = targetx - 32 * image_xscale;
o_battle_view.state = battle_view_focus_state;

// Move to target
x = approach(x, targetx, spd);
if (x == targetx) {
    state = battle_attack_state;
} 

// play sound
if (animation_hit_frame(1)) {
    audio_play_sound_effect(a_attack_swordswing, false, 80);
}
