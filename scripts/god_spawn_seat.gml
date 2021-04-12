//god_spawn_seat(x,y,rotation)

var temp_id = instance_create(argument[0],argument[1],o_seat);

with(temp_id)
{
    seat_place(argument[2]);
}


