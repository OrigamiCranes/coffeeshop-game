///speech_update_typewrite()
//updates the typewrite position


//0. CHECK IF AT END OF ARRAY
letter_current += 1;

if(letter_current >= array_length_1d(string_array))
{
    //update the state to completed typewriter
    state = 1;
    
    //reduce letter_current to the max characters
    letter_current = array_length_1d(letter_array)-1;
    exit;
}

//1. GET THE NEXT CHARACTER
letter_array[letter_current] = string_array[letter_current];

//1.5 Set letter position
speech_calculate_letter_pos(letter_current);

//2. ROUTE DEPENDING ON CHARACTER
var  delay = 0
switch (letter_array[letter_current])
{
    case ' ': delay = 2; break;
    case '.': delay = 3; break;
    case '!':
    case '?': delay = 4; break;
    default: 
    
        delay = 1;
}
 

//3. SET NEXT WAIT TIME DEPENDING ON CHARACTER
typewrite_alarm = typewrite_alarm_default*delay;


//4. TRIGGER ANY sound,emote events
if(sound_trigger == 1)
{
    sound_timer += global.dt_steady;
    
    
    //4.1 Check if valid character
    if(letter_array[letter_current] != ' ' || '?' || '!')
    {
        //4.2 Check if enough time has passed for new audio
        if(sound_timer >= sound_alarm)
        {
            sound_timer = 0;
            
            
            //4.3 Route Depending on voiceStyle
            var prefix = '';
            switch (voice_type)
            {
                case 1: prefix = 'speech_1'; break;
            }
             
            
            //4.4 Route depending on character
            var suffix = '';
            switch (letter_array[letter_current])
            {
                case 'a' : suffix = '_a'; break;
                default: 
            }
            
            
            //4.5 Merge together to make sound_prompt name
            sound_prompt = prefix + suffex;
            
            //4.6 Send Speech Sound Prompt
            //audio_speech_play(sound_prompt);
            
        }
    }
}

if(emote_trigger == 1)
{

}
