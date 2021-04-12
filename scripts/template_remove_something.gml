//template_remove_something(slot)

var slot = argument[0];

//1. ERROR CHECKING
if(OLD_SLOT[slot] == 0)
{
    var output = 0;
    return output;
}

//2. ELSE PASSED: REMOVE THAT TOPLAYER TRASH
else
{
    

    OLD_SLOT[slot] = 0;
    var output = 1;
    return output;
}
