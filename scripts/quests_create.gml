///quests_create()

enum quests
{
    null = 0,
    firstDay = 1,
    
    length = 2
}

enum quests_status
{
    null = 0,
    incomplete = 1,
    active = 2,
    locked = 3,
    complete = 4,
    init = 5
}


//--1. QUEST LIST--
var n = 0;
while(n < quests.length)
{
    //set the status of all quests as incomplete
    quests_list[n] = 0;
    n++;
}

//--2. QUESTS ACTIVE--
//id list of active quests
quests_active = ds_list_create();

