/// list_to_array(list)
var list = argument0;
var arr;

var list_size = ds_list_size(list);
if (list_size < 1 ) return -1;

for (var i = 0; i < ds_list_size(list) ; i++) {
    arr[i] = list[| i]; 
}

return arr;
