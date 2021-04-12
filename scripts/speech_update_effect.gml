///speech_update_effect()
//go through letter_array updating each letter effects


var n = 0;
while(n <= letter_current)
{

    // -1. CALCULATION ROTATION 
        speech_effect_rotation(n);
    // -2. CALCULATE SHAKE
        speech_effect_shake(n);
    // -3. CALCULATE GRADIENT
        speech_effect_gradient(n);
    // -4. CALCULATE SHADOW
        speech_effect_shadow(n);

    n++
}
