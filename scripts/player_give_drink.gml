///player_give_drink(reciever_id,drink_id)
//give a drink to a customer, staffmember, or just a person.

// 0. Define Variables

// 1. Check for any errors/reasons for drink not transfering

// 2. Give the Drink

    /*
    player_inventory_transferItem(reciever_id, drink_id)
    
    // 2.1 Run the relevent customer_recieve_drink() code or boss_recieve_drink(), friend_recieve_drink()
    if(reciever_id.object_index == o_customer)
    {
        with(reciever_id)
        {
            customer_recieve_drink(other.drink_id)
        }
        
    }
