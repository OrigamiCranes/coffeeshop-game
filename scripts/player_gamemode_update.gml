///gamemode_update(new_gamemode)
if(argument[0] != -1)
{
    if(player_state == 1)
    {
        player_livemode_reset();
    }
    
    player_state = argument[0];
}
