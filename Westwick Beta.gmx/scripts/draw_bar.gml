///draw_bar(x, y, sprite, value, maxValue)
var xx = argument0;
var yy = argument1;
var sprite = argument2;
var value = argument3;
var maxValue = argument4;

var index = (value/maxValue) * (sprite_get_number(sprite) - 1);

// Draw the health bar
draw_sprite(sprite, index, xx, yy);
