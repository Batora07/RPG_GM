/// menu_option_load()
if (load_game("save.dat")) {
    create_message_at_view_center("Game loaded.");    
} else {
    create_message_at_view_center("Unabled to load the game."); 
}
instance_destroy();
