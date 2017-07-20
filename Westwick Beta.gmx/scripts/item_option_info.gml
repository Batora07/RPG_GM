/// item_option_info()
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        var item = ds_list_find_value(items, other.parent.index);
        if (item != undefined) {
            var message = create_message(other.x, other.y, item[? "info"]); 
        } else {
            exit;
        }
    }
}

// hide the parent
visible = false;
child = message;
child.parent = id;
enabled = false;
