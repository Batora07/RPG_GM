/// mark_option_list(list)
var list = argument0;

// loop through the list and mark all the maps
for (var i =0; i < ds_list_size(list); i++) {
    ds_list_mark_as_map(list, i);
}
