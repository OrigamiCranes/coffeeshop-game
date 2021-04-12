///god_items_utensil_findVal(type,subtype,val)

var type = argument[0];
var subtype = argument[1];
var val = argument[2];
var output = -1;

// 2. ROUTE TO THE TYPE AND RETURN THE [SUBTYPE,VAL] ARRAY VALUE
switch(type)
{
    case items_ingredient.coffee:
        output = items_ingredient_coffee_list[subtype,val];
    break;
    
    case items_ingredient.coffeeBag:
        output = items_ingredient_coffeeBag_list[subtype,val];
    break;
    
}



return output;
