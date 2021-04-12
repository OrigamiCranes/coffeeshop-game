///speech_effect_rotation(letter_n)

var n = argument[0];

//1. Check if rotation is applicable
if(e_rotation[n] != 0)
{
    //ROUTE TO RELEVENT EFFECT
    switch (e_rotation[n])
    {
        case 1: 
        
            //apply clockwise rotation
            
            rotation[n] = rotation_max * sin(2*pi*rotation_frequency*time[n])
            break;
            
        case 2:
            
            //apply counterclockwise rotation
            rotation[n] = rotation_max * cos(2*pi*rotation_frequency*time[n])
            break;
    }
        
}
