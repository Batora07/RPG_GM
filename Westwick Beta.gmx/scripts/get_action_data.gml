/// get_action_data()
return json_decode('{
    "attack": {
        "name"          : "Attack",
        "action"        : "battle_approach_state",
        "info"          : "A basic melee#attack."
    },
    
    "defend": {
        "name"          : "Defend",
        "action"        : "action_defend",
        "info"          : "Reduces damage taken#by half and sets#action bar to half."
    },
    
    "fire spell": {
        "name"          : "Fire Spell",
        "action"        : "battle_fire_spell_state",
        "info"          : "Has a lower damage#rate but a higher#critical chance."
    },
    
    "sonar spell": {
        "name"          : "Sonar Spell",
        "action"        : "battle_sonar_spell_state",
        "info"          : "A basic ranged#attack."
    }
}
');
