///create_message_at_view_center(text)
var text = argument0;

//create the message
var message_ui = create_message(0, 0, text);

// Update the message
with (message_ui) {
    x = (display_get_gui_width()/2)-width/2;
    y = (display_get_gui_height()/2) - height/2;
}

return message_ui;
