/// battle_death_state
image_speed = 0;
hitflash = true;
if (image_alpha > 0) {
    image_alpha -= .04;
} else {
    instance_destroy();
}
