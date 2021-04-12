///quests_update_all()

//1. Go through active quest array and run the update code
var n =0;
while(n < ds_list_size(quests_active))
{
    // 1.1 ROUTE DEPENDING ON ACTIVE QUEST AND RELEVENT UPDATE script
    quests_update(quests_active[|n].quest_number);
    n++      
}
