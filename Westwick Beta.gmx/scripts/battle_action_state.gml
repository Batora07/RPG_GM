/// battle_action_state()
battle_set_sprite(IDLE, 0);
depth = -1;

if (object_index == o_enemy_battle_unit) {
    state = battle_approach_state;
}
