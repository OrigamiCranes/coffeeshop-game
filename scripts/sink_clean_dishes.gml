///sink_clean_dishes(number_of_dishes)

if(argument[0] <= dirty_dishes)
{
    dirty_dishes -= argument[0];
    clean_dishes += argument[0];
    
}
else if(argument[0] > dirty_dishes)
{
    clean_dishes += dirty_dishes;
    dirty_dishes = 0;
}

