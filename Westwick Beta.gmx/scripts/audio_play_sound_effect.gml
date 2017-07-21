///audio_play_sound_effect(sound, loops, priority)
var sound = argument0;
var loops = argument1;
var priority = argument2;

if (instance_exists(o_audio_player)) {
    audio_play_sound_on(o_audio_player.sfx_emitter, sound, loops, priority);
}
