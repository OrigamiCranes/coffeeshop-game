//go through exits and select one
var n_max = ds_list_size(o_god.list_customerExit);

var val = irandom(n_max-1);

var temp_id = o_god.list_customerExit[| val];

return temp_id;
