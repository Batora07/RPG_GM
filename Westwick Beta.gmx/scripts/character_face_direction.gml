///character_face_direction(character, facing, wait_seconds)
var character = argument0;
var facing = argument1;
var wait_seconds = argument2;

if (!instance_exists(character)) {
    action++;
    exit;
}

character.facing = facing;
wait(wait_seconds);
