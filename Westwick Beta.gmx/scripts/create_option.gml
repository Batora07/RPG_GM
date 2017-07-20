///create_option(text, script)
var text = argument0;
var script = argument1;

// Create the option map
var option = ds_map_create();
option[? "text"] = text;
option[? "script"] = script;

return option;
