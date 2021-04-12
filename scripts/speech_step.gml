
//-- 1. UPDATE THE SPEECH

//if currently in 'printing' state
if(state == 0)
{
    typewrite_timer += global.dt_steady;

    if(typewrite_timer >= typewrite_alarm)
    {
        
        typewrite_timer = 0;
        speech_update_typewrite();
        
        
    }
}

//-- 1.5 UPDATE TIME--
var n = 0;
while(n <= letter_current)
{
    time[n] += global.dt_steady;
    n++;
}

//--2. UPDATE EFFECTS

effect_timer += global.dt_steady;

if(effect_timer >= effect_alarm)
{

    effect_timer = 0;
    speech_update_effect();
    
}
