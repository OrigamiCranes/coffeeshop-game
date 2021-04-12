///openSign_flipSign
//

if(open = 1)
{
    open = 0;
    
    with(o_god)
    {
        store_open_update(0)
    }
}

else if(open = 0)
{
    open = 1;
    
    with(o_god)
    {
        store_open_update(1)
    }
}
