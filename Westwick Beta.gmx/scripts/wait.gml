///wait(seconds)
var seconds = argument0;
var steps = seconds_to_steps(seconds);

// set the alarm
if (alarm[0] == -1) {
    alarm[0] = steps;
}

// end the wait
if (alarm[0] == 0) {
    action++;
    return false;
}

return true;
