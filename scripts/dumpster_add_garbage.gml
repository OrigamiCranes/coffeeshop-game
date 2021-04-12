///dumpster_add_garbage(slot,item_id)
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
    if(trash_id[slot] != 0)
    {
        instance_destroy(trash_id[slot]);
    }
    
    trash_amount[slot] += 1;
    trash_id[slot] = item_id;
    var output = 1;
    return output;
}


