if(player_state == 0)
{

    if(menu_init == 0)
    {
    player_menu_init();
    }
       
}
else if(player_state != 0 && menu_init == 1)
{
    menu_init = 0;
    player_menu_exit();
}

