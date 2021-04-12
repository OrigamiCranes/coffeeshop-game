///trashcan_add_trash(slot_id,item_id)

var slot = argument[0];
var item_id = argument[1];

//1. ERROR CHECKING
if(trash_amount[slot] >= trash_max)
{
    var output = 0;
    return output;
}

//2. ELSE PASSED:
else
{
    
    //if theres already a toplayer trash - delete it
    if(trash_id[slot] != 0)
    {
        with(trash_id[slot])
        {
            instance_destroy(self);
        }
    }

    trash_id[slot] = item_id;
    trash_amount[slot] += 1;

    var output = 1;
    return output;
}
