///get_stats_from_class(class_string)
var class_string = argument0;

// Create and copy the stats
var stats = json_decode(json_encode(o_data.classes[? class_string]));

// Set the maxHealth and health
stats[? "maxHealth"] = calculate_health(level, stats[? "health"]);
stats[? "health"] = stats[? "maxHealth"];

// Set experience
if (object_index == o_player_stats) {
    stats[? "maxExperience"] = level*10;
}

// return the stats
return stats;
