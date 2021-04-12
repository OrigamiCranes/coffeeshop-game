///string2array('string')
//converts a string to an array[stringSize]

var in_string = argument[0];

var length = string_length(in_string);
var n = 1;
var output;
while(n <= length)
{
    output[n-1] = string_char_at(in_string,n);
    n++;
}

return output;
