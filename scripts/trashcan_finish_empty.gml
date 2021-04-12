///trashcan_finish_empty(slot)
var slot = argument[0];

//EMPTY THAT TRASH
if(trash_id[slot] != 0)
{
    instance_destroy(trash_id[slot]);
}

trash_amount[slot] = 0;
trash_id[slot] = 0;

//SPAWN A GARBAGE BAG

//GIVE IT TO THE PLAYER/pERSON
