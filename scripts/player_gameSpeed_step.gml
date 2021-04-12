///player_step_gameSpeed

//if a key was pressed
if(action_gameSpeed != 0)
{
    //if the gameSpeed is a new gameSpeed
    if(action_gameSpeed != o_god.gameSpeed_current)
    {
        //update the gameSpeed
        with(o_god)
        {
            gameSpeed_update(other.action_gameSpeed)
        }
    }
}
