///array(elements...)
/*
    Quick way to create arrays.
    array(element1, element1, ect...)
*/

var new_array;

// Loop through the arguments and set the array values
for (var i=0; i<argument_count; i++) {
    new_array[i] = argument[i];
}

// Return the new array
return new_array;
