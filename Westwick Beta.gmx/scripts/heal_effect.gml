/// heal_effect(args_list)
var args_list = argument0;
var amount = args_list[| 0];

// heal the player
if (instance_exists(o_player_stats)) {
    with(o_player_stats) {
        stats[? "health"] = min(stats[? "health"]+amount, stats[? "maxHealth"]);
        audio_play_sound_effect(a_potion, false, 60);
    }
}
