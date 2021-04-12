//customer_find_seat()
var list_size = ds_list_size(table_id.seats);

var n = 0;
var temp_id = 0;
while(n < list_size)
{
    temp_id = ds_list_find_value(table_id.seats, n);
    
    if(temp_id.status == 1)
    {
        return temp_id;
    }
    n = n + 1;
    
}

//if none found
return -1;

