///normalise_percentage(value,min,max)
//changes a percentage value (e.g. 0.6, 0.21) to be normalised to a min max
//e.g. if bean quality is 5/10, but the min bean quality is 60 and max is 100
//then would make the output be 80 quality.



var val = argument[0];
var min_val = argument[1];
var max_val = argument[2];

var normalised_value = (max_val-min_val)*(val/1)+min_val;
