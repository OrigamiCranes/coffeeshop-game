if(qte_active == 1)
{
    switch(qte_event_current)
    {
    case qte_event.null:
    {
        
    }
    break;
        
    case qte_event.pour:
    {
        qte_pour_draw();
    }
    break;
    }
}
