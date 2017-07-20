/// create_items_option_list()
var options = ds_list_create();

// loop throught the items
var items_list = o_player_stats.items;
for (var i =0; i < ds_list_size(items_list); i++) {
    var item = items_list[| i];
    var item_number = o_player_stats.item_number[| i];
    var option_text = "x"+string(item_number)+" "+item[? "name"]; // x5 Apple
    if (item_number > 1) option_text +="s";                 // x5 Apples
    show_message(option_text);
    // Attempt to prevent the text from going past the ui frame
    if (string_length(option_text) > 13) {
        option_text = string_copy(option_text, 0, 10);
        option_text += "...";
    }
    
    options[| i] = create_option(option_text, noone);
}

mark_option_list(options);
return options;
