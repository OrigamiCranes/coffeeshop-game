///speech_calculate_letter_pos(letter_n)

//1. DEFINE INPUT
var letter_n = argument[0];

//2. CALCULATE X VAL
var x_pos = (letter_w+x_spacing)*letter_n;

//3. WRAP BASED ON X_END
var n = 0;
while(x_pos >= x_end)
{
    var x_pos = x_pos - x_end;
    n += 1;
}

var y_pos = (letter_h+y_spacing)*n; 

letter_x[letter_n] = x_pos;
letter_y[letter_n] = y_pos;
