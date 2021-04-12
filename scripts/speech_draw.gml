///speech draw
draw_set_halign( fa_center );
draw_set_valign( fa_middle );
//1. Go through letter_array[n] drawing each chars relevent effects.
var n = 0;
while(n <= letter_current)
{
    //speech_set_font(n);
    speech_draw_letter(n);    
    n++;
}
