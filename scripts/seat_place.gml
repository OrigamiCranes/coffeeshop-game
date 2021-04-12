//seat_place(rotation)

//1. update rotation
rotation = argument[0];

//2. check if next to table
table_id = seat_table_check();

//if there is a valid table
if(table_id != -1)
{

    //add the table/update table
    with(table_id)
    {
        table_add_seat(other.id)
    }
    
    //update status
    status = 1;
}
