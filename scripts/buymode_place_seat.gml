var temp_id = instance_create(argument[0]*tile_size,argument[1]*tile_size,o_seat);

with(temp_id)
{
    seat_place(argument[2]);
}

