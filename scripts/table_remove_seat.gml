//table_remove_seat(seat_id)

var val = ds_list_find_index(seats, argument[0]);
ds_list_delete(seats, val);

with(val)
{
    table_id = 0;
}
