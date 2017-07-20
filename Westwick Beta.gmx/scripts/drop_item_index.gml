///drop_item_index(item, index, amount)
var item = argument0;
var index = argument1;

//Make sure the player stats object exists
if (instance_exists(o_player_stats)) {
    with(o_player_stats) {
        // find the item
        if (ds_list_find_value(items, item_index) != undefined) {
            item_number[| item_index] -= amount;
            
            // Remove the item
            if (item_number[| item_index] <= 0){
                ds_list_delete(item_number, item_index);
                ds_list_delete(items, item_index);
            }
        }
    }
}
