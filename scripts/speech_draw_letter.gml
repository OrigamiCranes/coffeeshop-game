///speech_draw_letter(letter_n)

//1. DEFINE INPUTS
var n = argument[0];

//4. DRAW THE TEXT WITH ALL DATA COMBINED
draw_text_transformed_color(x+letter_x[n],y+letter_y[n],
            letter_array[n],letter_w,letter_h,rotation[n],
            colour[n],colour[n],colour[n],colour[n],1)
