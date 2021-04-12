///quests_update(quest_number)

//1. Go through active quest array and run the update code
var quest_n = argument[0];
    
 // 1.1 ROUTE DEPENDING ON ACTIVE QUEST AND RELEVENT UPDATE script
switch(quest_n)
{
    case quests.firstDay: 
         quest_1_update(); 
         break;
}


