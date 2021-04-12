#define god_items_utensil_cups
//-- CUP SUBTYPES--
//0 = name
//1 = beauty (quality)
//2 = price
//3 = ethics
//4 = description
//5 = sprite subindex

//TEMPLATE
/*
var number = items_untesil_cup_espresso.fair;
items_utensil_cup_espresso_list[number,0] = 'Name';
items_utensil_cup_espresso_list[number,1] =  8/10;
items_utensil_cup_espresso_list[number,2] = 8/10;
items_utensil_cup_espresso_list[number,3] = 5/5;
items_utensil_cup_espresso_list[number,4] = 'These beans are the best beans.';
items_utensil_cup_espresso_list[number,5] = 0;
*/

//--BASE STATS OF ALL CUPS--
items_utensil_cup_espresso_base[items_base.price_min] = 0.10;
items_utensil_cup_espresso_base[items_base.price_max] = 4.00;
items_utensil_cup_espresso_base[items_base.quality_min] = 0.3;
items_utensil_cup_espresso_base[items_base.quality_max] = 1;

items_utensil_cup_small_base[items_base.price_min] = 0.10;
items_utensil_cup_small_base[items_base.price_max] = 4.00;
items_utensil_cup_small_base[items_base.quality_min] = 0.3;
items_utensil_cup_small_base[items_base.quality_max] = 1;

items_utensil_cup_medium_base[items_base.price_min] = 0.10;
items_utensil_cup_medium_base[items_base.price_max] = 4.00;
items_utensil_cup_medium_base[items_base.quality_min] = 0.3;
items_utensil_cup_medium_base[items_base.quality_max] = 1;

items_utensil_cup_large_base[items_base.price_min] = 0.10;
items_utensil_cup_large_base[items_base.price_max] = 4.00;
items_utensil_cup_large_base[items_base.quality_min] = 0.3;
items_utensil_cup_large_base[items_base.quality_max] = 1;

god_items_utensil_cups_espresso();
god_items_utensil_cups_small();
god_items_utensil_cups_medium();
god_items_utensil_cups_large();





#define god_items_utensil_cups_espresso
//-- CUP SUBTYPES--
//0 = name
//1 = beauty
//2 = price
//3 = ethics
//4 = description
//5 = sprite subindex

//TEMPLATE
/*
var number = items_untesil_cup_espresso.fair;
items_utensil_cup_espresso_list[number,0] = 'Name';
items_utensil_cup_espresso_list[number,1] =  8/10;
items_utensil_cup_espresso_list[number,2] = 8/10;
items_utensil_cup_espresso_list[number,3] = 5/5;
items_utensil_cup_espresso_list[number,4] = 'These beans are the best beans.';
items_utensil_cup_espresso_list[number,5] = 0;
*/

enum items_untesil_cup_espresso
{
    takeaway = 0,
    basic = 1,
    glass = 2
    
}

var number = items_untesil_cup_espresso.takeaway;
items_utensil_cup_espresso_list[number,0] = '2-Go Supplies - Espresso Size';
items_utensil_cup_espresso_list[number,1] =  1/10;
items_utensil_cup_espresso_list[number,2] = 1/10;
items_utensil_cup_espresso_list[number,3] = 5/5;
items_utensil_cup_espresso_list[number,4] = 'Cheap Simple Paper Cups';
items_utensil_cup_espresso_list[number,5] = 0;

var number = items_untesil_cup_espresso.basic;
items_utensil_cup_espresso_list[number,0] = 'Simply Basic - Espresso';
items_utensil_cup_espresso_list[number,1] =  6/10;
items_utensil_cup_espresso_list[number,2] = 6/10;
items_utensil_cup_espresso_list[number,3] = 5/5;
items_utensil_cup_espresso_list[number,4] = 'The Modern White-Chique Design';
items_utensil_cup_espresso_list[number,5] = 1;

var number = items_untesil_cup_espresso.glass;
items_utensil_cup_espresso_list[number,0] = 'Quartz Glass - Espresso';
items_utensil_cup_espresso_list[number,1] =  9/10;
items_utensil_cup_espresso_list[number,2] = 9/10;
items_utensil_cup_espresso_list[number,3] = 5/5;
items_utensil_cup_espresso_list[number,4] = 'A Higher Quality Cup';
items_utensil_cup_espresso_list[number,5] = 2;


//3. NORMALISE THE VALUES TO BE CORRECT TO MIN/MAX VALUES OF QUALITY, PRICE, ETHICS
var n = 0;
while(n < array_height_2d(items_utensil_cup_espresso_list))
{

    //normalise quality
    items_utensil_cup_espresso_list[n,1] = normalise_percentage(items_utensil_cup_espresso_list[n,1],
        items_utensil_cup_espresso_base[items_base.quality_min],items_utensil_cup_espresso_base[items_base.quality_max]);
    
    //normalise price
    items_utensil_cup_espresso_list[n,2] = normalise_percentage(items_utensil_cup_espresso_list[n,2],
        items_utensil_cup_espresso_base[items_base.price_min],items_utensil_cup_espresso_base[items_base.price_max]);
    
    n++
}

#define god_items_utensil_cups_small
//-- CUP SUBTYPES--
//0 = name
//1 = beauty
//2 = price
//3 = ethics
//4 = description
//5 = sprite subindex

//TEMPLATE
/*
var number = items_untesil_cup_small.takeaway;
items_utensil_cup_small_list[number,0] = 'Name';
items_utensil_cup_small_list[number,1] =  8/10;
items_utensil_cup_small_list[number,2] = 8/10;
items_utensil_cup_small_list[number,3] = 5/5;
items_utensil_cup_small_list[number,4] = 'These beans are the best beans.';
items_utensil_cup_small_list[number,5] = 0;
*/


enum items_untesil_cup_small
{
    takeaway = 0,
    basic = 1,
    glass = 2
}

var number = items_untesil_cup_small.takeaway;
items_utensil_cup_small_list[number,0] = '2-Go Supplies - Small Size';
items_utensil_cup_small_list[number,1] =  1/10;
items_utensil_cup_small_list[number,2] = 1/10;
items_utensil_cup_small_list[number,3] = 5/5;
items_utensil_cup_small_list[number,4] = 'Cheap Simple Paper Cups';
items_utensil_cup_small_list[number,5] = 0;

var number = items_untesil_cup_small.basic;
items_utensil_cup_small_list[number,0] = 'Simply Basic - Small';
items_utensil_cup_small_list[number,1] =  6/10;
items_utensil_cup_small_list[number,2] = 6/10;
items_utensil_cup_small_list[number,3] = 5/5;
items_utensil_cup_small_list[number,4] = 'The Modern White-Chique Design';
items_utensil_cup_small_list[number,5] = 1;

var number = items_untesil_cup_small.glass;
items_utensil_cup_small_list[number,0] = 'Quartz Glass - Small';
items_utensil_cup_small_list[number,1] =  9/10;
items_utensil_cup_small_list[number,2] = 9/10;
items_utensil_cup_small_list[number,3] = 5/5;
items_utensil_cup_small_list[number,4] = 'A Higher Quality Cup';
items_utensil_cup_small_list[number,5] = 2;

//3. NORMALISE THE VALUES TO BE CORRECT TO MIN/MAX VALUES OF QUALITY, PRICE, ETHICS
var n = 0;
while(n < array_height_2d(items_utensil_cup_small_list))
{

    //normalise quality
    items_utensil_cup_small_list[n,1] = normalise_percentage(items_utensil_cup_small_list[n,1],
        items_utensil_cup_small_base[items_base.quality_min],items_utensil_cup_small_base[items_base.quality_max]);
    
    //normalise price
    items_utensil_cup_small_list[n,2] = normalise_percentage(items_utensil_cup_small_list[n,2],
        items_utensil_cup_small_base[items_base.price_min],items_utensil_cup_small_base[items_base.price_max]);
    
    n++
}

#define god_items_utensil_cups_medium
//-- CUP SUBTYPES--
//0 = name
//1 = beauty
//2 = price
//3 = ethics
//4 = description
//5 = sprite subindex

//TEMPLATE
/*
var number = items_untesil_cup_medium.takeaway;
items_utensil_cup_medium_list[number,0] = 'Name';
items_utensil_cup_medium_list[number,1] =  8/10;
items_utensil_cup_medium_list[number,2] = 8/10;
items_utensil_cup_medium_list[number,3] = 5/5;
items_utensil_cup_medium_list[number,4] = 'These beans are the best beans.';
items_utensil_cup_medium_list[number,5] = 0;
*/


enum items_untesil_cup_medium
{
    takeaway = 0,
    basic = 1,
    glass = 2
}
var number = items_untesil_cup_medium.takeaway;
items_utensil_cup_medium_list[number,0] = '2-Go Supplies - Medium Size';
items_utensil_cup_medium_list[number,1] =  1/10;
items_utensil_cup_medium_list[number,2] = 1/10;
items_utensil_cup_medium_list[number,3] = 5/5;
items_utensil_cup_medium_list[number,4] = 'Cheap Simple Paper Cups';
items_utensil_cup_medium_list[number,5] = 0;

var number = items_untesil_cup_medium.basic;
items_utensil_cup_medium_list[number,0] = 'Simply Basic - Medium';
items_utensil_cup_medium_list[number,1] =  6/10;
items_utensil_cup_medium_list[number,2] = 6/10;
items_utensil_cup_medium_list[number,3] = 5/5;
items_utensil_cup_medium_list[number,4] = 'The Modern White-Chique Design';
items_utensil_cup_medium_list[number,5] = 1;

var number = items_untesil_cup_medium.glass;
items_utensil_cup_medium_list[number,0] = 'Quartz Glass - Medium';
items_utensil_cup_medium_list[number,1] =  9/10;
items_utensil_cup_medium_list[number,2] = 9/10;
items_utensil_cup_medium_list[number,3] = 5/5;
items_utensil_cup_medium_list[number,4] = 'A Higher Quality Cup';
items_utensil_cup_medium_list[number,5] = 2;

//3. NORMALISE THE VALUES TO BE CORRECT TO MIN/MAX VALUES OF QUALITY, PRICE, ETHICS
var n = 0;
while(n < array_height_2d(items_utensil_cup_medium_list))
{

    //normalise quality
    items_utensil_cup_medium_list[n,1] = normalise_percentage(items_utensil_cup_medium_list[n,1],
        items_utensil_cup_medium_base[items_base.quality_min],items_utensil_cup_medium_base[items_base.quality_max]);
    
    //normalise price
    items_utensil_cup_medium_list[n,2] = normalise_percentage(items_utensil_cup_medium_list[n,2],
        items_utensil_cup_medium_base[items_base.price_min],items_utensil_cup_medium_base[items_base.price_max]);
    
    n++
}

#define god_items_utensil_cups_large
//-- CUP SUBTYPES--
//0 = name
//1 = beauty
//2 = price
//3 = ethics
//4 = description
//5 = sprite subindex

//TEMPLATE
/*
var number = items_untesil_cup_large.takeaway;
items_utensil_cup_large_list[number,0] = 'Name';
items_utensil_cup_large_list[number,1] =  8/10;
items_utensil_cup_large_list[number,2] = 8/10;
items_utensil_cup_large_list[number,3] = 5/5;
items_utensil_cup_large_list[number,4] = 'These beans are the best beans.';
items_utensil_cup_large_list[number,5] = 0;
*/


enum items_untesil_cup_large
{
    takeaway = 0,
    basic = 1,
    glass = 2
}

var number = items_untesil_cup_large.takeaway;
items_utensil_cup_large_list[number,0] = '2-Go Supplies - Large Size';
items_utensil_cup_large_list[number,1] =  1/10;
items_utensil_cup_large_list[number,2] = 1/10;
items_utensil_cup_large_list[number,3] = 5/5;
items_utensil_cup_large_list[number,4] = 'Cheap Simple Paper Cups';
items_utensil_cup_large_list[number,5] = 0;

var number = items_untesil_cup_large.basic;
items_utensil_cup_large_list[number,0] = 'Simply Basic - Large';
items_utensil_cup_large_list[number,1] =  6/10;
items_utensil_cup_large_list[number,2] = 6/10;
items_utensil_cup_large_list[number,3] = 5/5;
items_utensil_cup_large_list[number,4] = 'The Modern White-Chique Design';
items_utensil_cup_large_list[number,5] = 1;

var number = items_untesil_cup_large.glass;
items_utensil_cup_large_list[number,0] = 'Quartz Glass - Large';
items_utensil_cup_large_list[number,1] =  9/10;
items_utensil_cup_large_list[number,2] = 9/10;
items_utensil_cup_large_list[number,3] = 5/5;
items_utensil_cup_large_list[number,4] = 'A Higher Quality Cup';
items_utensil_cup_large_list[number,5] = 2;

//3. NORMALISE THE VALUES TO BE CORRECT TO MIN/MAX VALUES OF QUALITY, PRICE, ETHICS
var n = 0;
while(n < array_height_2d(items_utensil_cup_large_list))
{

    //normalise quality
    items_utensil_cup_large_list[n,1] = normalise_percentage(items_utensil_cup_large_list[n,1],
        items_utensil_cup_large_base[items_base.quality_min],items_utensil_cup_large_base[items_base.quality_max]);
    
    //normalise price
    items_utensil_cup_large_list[n,2] = normalise_percentage(items_utensil_cup_large_list[n,2],
        items_utensil_cup_large_base[items_base.price_min],items_utensil_cup_large_base[items_base.price_max]);
    
    n++
}