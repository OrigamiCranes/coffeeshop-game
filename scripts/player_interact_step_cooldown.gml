interaction_timer += global.dt_steady;
    
    if(interaction_timer >= interaction_cooldown_alarm)
    {
        interaction_timer = 0;
        interaction_cooldown_trigger = 0;
        interaction_release_trigger = 0;
    }
