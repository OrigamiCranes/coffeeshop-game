///god_add_item_ingredient(type,subtype)

var temp_id = instance_create(0,0,o_items_utensil);

temp_id.type = argument[0];
temp_id.subtype = argument[1];

return temp_id;

