//customer_find_table()
//go through tables, finding pref an empty one, 
//returns table_id or -1

// TODO: Look for an occupied one

var list_size = ds_list_size(o_god.list_table);

var n = 0; var m = 0;
var temp_id = 0;
temp_list = ds_list_create();
while(n < list_size)
{
    temp_id = ds_list_find_value(o_god.list_table, n);
    
    if(temp_id.status == 1)
    {
        ds_list_add(temp_list,temp_id);
        m++;
    }
    n = n + 1;
    
}

if(m == 0)
{
    //if none found
    return -1;
}

else
{
    var val = irandom(m-1);
    var temp_id = ds_list_find_value(temp_list,val);
    ds_list_destroy(temp_list);
    return temp_id;
}



