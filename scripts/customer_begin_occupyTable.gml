//customer_begin_occupyTable

//1. Find Table
table_id = customer_find_table();
    
//2.1 if no table, beginLeaving
if(table_id = -1)
{
    customer_begin_leave()
    exit;
}

//2.2 Find Seat
seat_id = customer_find_seat();

//if no seat, begin leaving
if(seat_id = -1)
{
    customer_begin_leave()
    exit;
}

//2.3 Update Table Id
with(table_id)
{

    table_add_customer(other.id);

}


//2.4 Move to Seat
moveTo_speed(seat_id.x,seat_id.y, o_god.customer_speed * global.dt_steady)
moving = 1;
status = 6;
