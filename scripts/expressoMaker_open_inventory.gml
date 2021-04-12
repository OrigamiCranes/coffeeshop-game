///expressoMaker_open_inventory()
//opens up the crafting screen for the expressoMaker

//1. Spawn the Inventory Object
inventory_id = instance_create(o_god.inventory_x,o_god.inventory_y,o_inventory);

//2. pass on Parent Variable
inventory_id.parent = id;

//3. Run Init Script
with(inventory_id)
{
    expressoMaker_inventory_init();
}


