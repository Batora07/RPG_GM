///set_hitflash(target, duration)
var target = argument0;
var duration = argument1;
with (target) {
    hitflash = true;
    alarm[0] = duration;
}
