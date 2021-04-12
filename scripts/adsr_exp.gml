#define adsr_exp
///adsr_exp(x,exp,multiplier)
//x input_value
// exp == 0 means linear

var in_exp = argument[1];
if(in_exp = 0)
{
    in_exp = 0.000001;
}
else if(in_exp = 1)
{
    in_exp = 1.000001;
}

var output = argument[2] * ((power(in_exp,argument[0]) - 1)/(in_exp-1))
return output;


#define adsr_linear
///adsr_linear(x,multiplier)

var output = argument[0]*argument[1];