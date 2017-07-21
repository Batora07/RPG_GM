/// create_action_list
var list = ds_list_create();
var name_list = stats[? "actions"];
for (var i=0; i< ds_list_size(name_list); i++) {
    list[| i] = o_data.actions[? name_list[| i]];
}
return list;
