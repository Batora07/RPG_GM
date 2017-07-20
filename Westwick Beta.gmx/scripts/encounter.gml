/// encounter()

// Exit cases
if (!instance_exists(o_elizabeth) || !instance_exists(o_random_encounters)) exit;

if (o_random_encounters.on && !instance_exists(o_battle_transition)) {
    o_elizabeth.state = elizabeth_wait_state;
    o_elizabeth.persistent = false;
    instance_create(0, 0, o_battle_transition);
}
