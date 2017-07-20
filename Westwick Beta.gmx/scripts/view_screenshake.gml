///view_screenshake(amount, duration)
var amount = argument0;
var duration = argument1;

if (instance_exists(o_view_parent)) {
    o_view_parent.screenshake = amount;
    o_view_parent.alarm[0] = duration;
}
