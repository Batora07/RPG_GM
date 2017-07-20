/// set_tile_depth(tile_layer, yoffset);
var tile_layer = argument0;
var yoffset = argument1; 

//  get array of tiles
var tiles = tile_get_ids_at_depth(tile_layer);

// loop through the array of tiles
var array_size = array_length_1d(tiles);
for (var i = 0; i < array_size; i++) {
    var tile = tiles[i];
    
    // Make sure the tile exists
    if (tile_exists(tile)){
        tile_set_depth(tile, -tile_get_y(tile)+yoffset);
    }
}
