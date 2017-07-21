/// battle_attack_state()
battle_set_sprite(ATTACK, 0);

// play sound
if (animation_hit_frame(0)) {
    var foe = instance_place(x+32 * image_xscale, y, o_battle_unit);
    if (foe.stats_object.defend) {
        audio_play_sound_effect(a_impact_defend, false, 80);
    } else {
        audio_play_sound_effect(a_impact, false, 80);
    }
}

// HIT
if (animation_hit_frame(1)) {
    var foe = instance_place(x+32 * image_xscale, y, o_battle_unit);
    if (foe) {
        deal_damage(id, foe, chance(stats_object.stats[? "critical"]/100), 1);
        set_hitflash(foe, room_speed/2);
        foe.state = battle_hit_state;
        view_screenshake(4, seconds_to_steps(.2));
        
        // set the view state
        o_battle_view.state = battle_view_idle_state;
    }
}

// Return
if (animation_end()) {
    state = battle_return_state;
}
