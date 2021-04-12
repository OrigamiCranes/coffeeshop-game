//--0. USER VARIABLES--


//--1. VARIABLES--

//table_size
// 0 = x size
// 1 = y size
size[0] = 1;
size[1] = 1;

//id list of seats
seats = ds_list_create();

//id list of customers
customer_id = 0;

//total number of seats
space = 0;

//table_status
//0 = null
// 1 = empty
// 2 = occupied
// 3 = FULL
status = 0;

//table_cleanliness
//0 = CLEAN
// +1 each time used
messLevel = 0;

//--2. ADD TABLE TO LIST OF TABLES
//and grid
with(o_god)
{
    god_add_table(other.id)
}

depth_bias = 0;
depth_update();
