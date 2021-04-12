//trashcan_remove_trash(slot)

var slot = argument[0];

//1. ERROR CHECKING
if(trash_id[slot] == 0)
{
    var output = 0;
    return output;
}

//2. ELSE PASSED: REMOVE THAT TOPLAYER TRASH
else
{
    

    trash_id[slot] = 0;
    trash_amount[slot] -= 1;
    var output = 1;
    return output;
}
