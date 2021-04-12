//clearArray_2d(arrayName,fromCellNumber)

for (var i=argument1; i<array_height_2d(argument0); i++)
        {
            for (var n=0; n<array_length_2d(argument0,i); n++)
            {
                argument0[i,n] = 0;
            }                        
        }
return argument0;
