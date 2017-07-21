///action_defend()
with (o_battle_unit) {
    state = battle_wait_state;
}

// make the current unit defend
stats_object.defend = true;
action_meter = max_action_meter/2;
