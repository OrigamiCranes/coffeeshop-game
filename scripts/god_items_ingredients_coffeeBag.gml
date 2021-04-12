enum items_ingredient_coffeeBag
{
   fair = 0,
   dooDoo = 1,
   okay = 2,
   magnifique = 3,
   meh = 4
}

items_ingredient_coffeeBag_base[items_base.price_min] = 1.00;
items_ingredient_coffeeBag_base[items_base.price_max] = 3.00;
items_ingredient_coffeeBag_base[items_base.quality_min] = 0.5;
items_ingredient_coffeeBag_base[items_base.quality_max] = 1;


//-- COFFEE BEAN TYPES--
//0 = name
// 1 = quality
// 2 = price
// 3 = ethics
// 4 = description
// 5 = sprite_subindex

//TEMPLATE
/*
var number = items_ingredient_coffeeBag.fair;
items_ingredient_coffeeBag_list[number,0] = 'Name';
items_ingredient_coffeeBag_list[number,1] =  8/10;
items_ingredient_coffeeBag_list[number,2] = 8/10;
items_ingredient_coffeeBag_list[number,3] = 5/5;
items_ingredient_coffeeBag_list[number,4] = 'These beans are the best beans.';
items_ingredient_coffeeBag_list[number,5] = 0;
*/
var number = items_ingredient_coffeeBag.fair;
items_ingredient_coffeeBag_list[number,0] = 'Fair Beans'
items_ingredient_coffeeBag_list[number,1] =  8/10;
items_ingredient_coffeeBag_list[number,2] = 8/10;
items_ingredient_coffeeBag_list[number,3] = 5/5;
items_ingredient_coffeeBag_list[number,4] = 'Ethically sourced, fair trade, "green" beans. Because the Earth deserves the best.';
items_ingredient_coffeeBag_list[number,5] = 0;

var number = items_ingredient_coffeeBag.dooDoo;
items_ingredient_coffeeBag_list[number,0] = 'DooDoo Beans'
items_ingredient_coffeeBag_list[number,1] =  2/10;
items_ingredient_coffeeBag_list[number,2] = 1/10;
items_ingredient_coffeeBag_list[number,3] = 1/5;
items_ingredient_coffeeBag_list[number,4] = 'These beans suck.';
items_ingredient_coffeeBag_list[number,5] = 1;

var number = items_ingredient_coffeeBag.okay;
items_ingredient_coffeeBag_list[number,0] = 'Okay Beans'
items_ingredient_coffeeBag_list[number,1] =  5/10;
items_ingredient_coffeeBag_list[number,2] = 4/10;
items_ingredient_coffeeBag_list[number,3] = 2.5/5;
items_ingredient_coffeeBag_list[number,4] = 'A classic household brand, the "Okay" Company remarks an unremarkable quality of Coffee Bean.';
items_ingredient_coffeeBag_list[number,5] = 2;

var number = items_ingredient_coffeeBag.magnifique;
items_ingredient_coffeeBag_list[number,0] = 'Le Bean Magnifique'
items_ingredient_coffeeBag_list[number,1] =  10/10;
items_ingredient_coffeeBag_list[number,2] = 10/10;
items_ingredient_coffeeBag_list[number,3] = 4/5;
items_ingredient_coffeeBag_list[number,4] = 'I dont know why but French stuff sounds so good.';
items_ingredient_coffeeBag_list[number,5] = 3;

var number = items_ingredient_coffeeBag.meh;
items_ingredient_coffeeBag_list[number,0] = 'Meh Beans'
items_ingredient_coffeeBag_list[number,1] =  3/10;
items_ingredient_coffeeBag_list[number,2] = 3/10;
items_ingredient_coffeeBag_list[number,3] = 2/5;
items_ingredient_coffeeBag_list[number,4] = 'Meh. They are beans, whatever.';
items_ingredient_coffeeBag_list[number,5] = 4;


//3. NORMALISE THE VALUES TO BE CORRECT TO MIN/MAX VALUES OF QUALITY, PRICE, ETHICS
var n = 0;
while(n < array_height_2d(items_ingredient_coffeeBag_list))
{

    //normalise quality
    items_ingredient_coffeeBag_list[n,1] = normalise_percentage(items_ingredient_coffeeBag_list[n,1],
        items_ingredient_coffeeBag_base[items_base.quality_min],items_ingredient_coffeeBag_base[items_base.quality_max]);
    
    //normalise price
    items_ingredient_coffeeBag_list[n,2] = normalise_percentage(items_ingredient_coffeeBag_list[n,2],
        items_ingredient_coffeeBag_base[items_base.price_min],items_ingredient_coffeeBag_base[items_base.price_max]);
    
    n++
}
