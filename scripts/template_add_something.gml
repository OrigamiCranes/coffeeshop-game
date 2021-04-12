///template_add_something(slot_id,item_id)

var slot = argument[0];
var item_id = argument[1];

//1. ERROR CHECKING
if(0 != 1)
{
    var output = 0;
    return output;
}

//2. ELSE PASSED:
else
{
    

    NEWSLOT[slot] = item_id;
    var output = 1;
    return output;
}
