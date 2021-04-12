///speech_effect_shake(letter_n)

var n = argument[0];

//1. Check if applicable
if(e_shake[n] != 0)
{
    //route
    switch (e_shake[n])
    {
        case 1: 
            
            //apply SHAKE
            x_offset[n] = x_offset_max * sin(2*pi*x_shake_frequency*time[n]);
            y_offset[n] = y_offset_max * sin(2*pi*y_shake_frequency*time[n]);
            break;
        
    }
     

}
