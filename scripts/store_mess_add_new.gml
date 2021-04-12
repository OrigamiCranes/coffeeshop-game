///store_mess_add_new(mess_type)

var mess_type = argument[0];

//ROUTE TO TYPE OF MESS
switch (mess_type)
{
    //FLOOR MESS
    case 0: 
    
        //1. FIND A FREE SPOT FOR THE MESS TO GO
        /**
        
        output = buildmode_find_floorspace(store_area);
        store_mess_spawn_x = output[0];
        store_mess_spawn_y = output[1];       
        output = 0;

        */
        god_spawn_mess_floor(store_mess_spawn_x,store_mess_spawn_y); 
    break;

}
 
