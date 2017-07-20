///chance(percent)
/*
    Used to calculate a change. The percent should
    be from 0 - 1, where 1 is 100%.
*/

var percent = argument[0];
return random(1) < percent;
