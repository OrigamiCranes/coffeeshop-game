///god_items_utensil_findVal(type,subtype,val)

var type = argument[0];
var subtype = argument[1];
var val = argument[2];
var output = -1;

// 2. ROUTE TO THE TYPE AND RETURN THE [SUBTYPE,VAL] ARRAY VALUE
switch(type)
{
    case items_utensil.cup_espresso:
        output = items_utensil_cup_espresso_list[subtype,val];
    break;
    
    case items_utensil.cup_small:
        output = items_utensil_cup_small_list[subtype,val];
    break;
    
    case items_utensil.cup_medium:
        output = items_utensil_cup_medium_list[subtype,val];
    break;
    
    case items_utensil.cup_large:
        output = items_utensil_cup_large_list[subtype,val];
    break;
}



return output;
