/// load_game(file_name)
var file_name = argument0;

// break cases
if (!instance_exists(o_player_stats)) show_error("Save error : Stats object not found.", false);
if (!instance_exists(o_elizabeth)) show_error("Save error : Elizabeth object not found", false);

// load the file
var loaded_data = ds_map_secure_load(file_name);
if (ds_exists(loaded_data, ds_type_map)) {
    ds_map_destroy(global.save_data);
} else {
    return false;
}

global.save_data = loaded_data;

// load the stats
with (o_player_stats) {
    level = global.save_data[? "level"];
    ds_map_destroy(stats);
    stats = get_stats_from_class("elizabeth");
    draw_health = stats[? "health"];
    
    // load the items
    if (global.save_data[? "items"] != -1) {
        ds_list_copy(items, global.save_data[? "items"]);
        ds_list_copy(item_number, global.save_data[? "item number"]);
    }
}

with (o_elizabeth) {
    x = global.save_data[? "x"];
    y = global.save_data[? "y"];
    last_room = noone;
}

// load the room
var saved_room = asset_get_index(global.save_data[? "room"]);
if (room != saved_room) {
    o_elizabeth.last_room = noone;
    room_goto(saved_room);
}

// Success
return true;
