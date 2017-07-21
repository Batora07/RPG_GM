///battle_ranged_attack_state(xoffset, yoffset, effect, effect_frame)
var xoffset = argument0;
var yoffset = argument1;
var effect = argument2;
var effect_frame = argument3;

// set the sprite
battle_set_sprite(RANGED, 0);

var targetx = xstart + BATTLE_SPACE * image_xscale;
var sprite_data = o_data.sprites[? sprite_get_name(sprite[RANGED])];
if (animation_hit_frame(sprite_data[? "hit frame"])) {
    // set the view state
    o_battle_view.target[? "x"] = targetx - 32*image_xscale;
    o_battle_view.state = battle_view_focus_state;
}

// hit
if (animation_hit_frame(effect_frame)) {
    var effect = instance_create(x+xoffset, y+yoffset, effect);
    effect.image_xscale = image_xscale;
    effect.direction = point_direction(0, 0, image_xscale, 0);
    effect.creator = id;
    if (object_index == o_player_battle_unit){
        effect.target = o_enemy_battle_unit;
    } else {
        effect.target = o_player_battle_unit;
    }
}

// Return to the unit
if (animation_end()) {
    state = battle_wait_state;
}
