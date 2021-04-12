//customer_complete_occupyTable

//1. Apply Tip etc.

//2. Update Table, remove Table_id/seat_id
with(table_id)
{
    table_remove_customer(other.id)
}

//2.1 update variables
table_id = 0;
seat_id = 0;

//3. Begin Leaving
customer_begin_leave();
