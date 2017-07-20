///is_in_array(value, array)
/*
    Can be used to search an array for a value.
*/
var value = argument0;
var argument_array = argument1;

// Search the array for the value
for (var i=0; i<array_length_1d(argument_array); i++) {
    // Return true if we find it
    if (value == argument_array[i]) return true;
}

// Return false if we don't
return false;
