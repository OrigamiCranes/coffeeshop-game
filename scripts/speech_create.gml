///speech_create(x,y,string)
var in_string = argument[2];

//1. CREATE THE SPEECH OBJECT
temp_id = instance_create(argument[0],argument[1],o_speech)

//3. SET Speech VARIABLES
with(temp_id)
{

    //State
    //0 == printing
    //1 == completed typewriter
    
    state = 0;
    sound_timer = 0;
    //bpm/1min
    sound_alarm = 262/60;
    voice_type = 0;
    
    typewrite_timer = 0;
    typewrite_alarm_default = 0.05;
    typewrite_alarm = typewrite_alarm_default;
    
    effect_timer = 0;
    effect_alarm = 0.05;
    
    //start at -1 for array[0] start
    letter_current = -1;
    letter_array[0] = 0;
    string_array[0] = 0;
    
    time[0] = 0;
    
    //-ROTATION--
    rotation[0] = 0;
    //hz value
    rotation_frequency = 10;
    //degrees
    rotation_max = 45;
    
    //-SHAKE-
    x_offset[0] = 0;
    y_offset[0] = 0;
    //hz value
    x_shake_frequency = 10;
    y_shake_frequency = 10;
    //pixels
    x_offset_max = 3;
    y_offset_max = 3;
    
    colour[0] = 0;
    font[0] = 0;
    effect[0,0] = 0;
    e_rotation[0] = 0;
    e_shake[0] = 0;
    e_gradient[0] = 0;
    e_shadow[0] = 0;
    
    letter_w = 1;
    letter_h = 1;
    x_spacing = 7;
    y_spacing = 5;
    x_end = 1000;
    letter_x[0] = 0;
    letter_y[0] = 0;
    
    sound_trigger = 0;
    emote_trigger = 0;


//3.5. TRANSFER THE VARIABLES OVER
//convert string to char array
string_array = string2array(in_string);

//set size of all other relevent string_array arrays
speech_create_set_arrays()

//--4. RUN TRANSFER CALCUATION--
//based on input, apply any variation to the default options 
//set in the previous code.


}

//--5. Return Object Id
return temp_id;
