//--0. USER VARIABLES--


//--1. VARIABLES--
dirty_dishes = 0;
clean_dishes = 0;
depth_bias = 0;

//--2. Add to grid/array etc.
with(o_god)
{
    god_add_sink(other.id);
}

depth_update();
