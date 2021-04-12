//1. VARIABLES--

trash_count = 0;
depth_bias = 0;

//--2. Add to grid/array etc.
with(o_god)
{
    god_add_dumpster(other.id);
}

depth_update();

//--SLOTS--
slot_amount = 1; 
slot_max = 1;

//time to empty
empty_alarm = 1;

var n = 0;
while(n < slot_max)
{
    
    //last trash id
    trash_id[n] = 0;

    //current trash amount
    trash_amount[n] = 0;
    
    timer[n] = 0;
    active[n] = 0;
    
    
    n++;
}

