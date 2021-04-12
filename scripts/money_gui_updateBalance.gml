/**
clock_draw_year_sprite[0] = floor(clock_current_year / 1000);
clock_draw_year_sprite[1] = floor((clock_current_year/100) mod 10);
clock_draw_year_sprite[2] = floor((clock_current_year / 10) mod 10);
clock_draw_year_sprite[3] = clock_current_year mod 10;
*/
//if positive
if(money_display > 0)
{

if(money_display >= 10000)
{
    //empty
    money_draw_balance_sprite[0] = 17;
    
    money_draw_balance_sprite[1] = floor(money_display/10000);
    money_draw_balance_sprite[2] = floor((money_display/1000) mod 10);
    money_draw_balance_sprite[3] = floor((money_display/100) mod 10);
    money_draw_balance_sprite[4] = floor((money_display/10 mod 10));
    money_draw_balance_sprite[5] = floor(money_display mod 10);
}
else if(money_display >= 1000)
{
    //empty
    money_draw_balance_sprite[0] = 17;
    
    money_draw_balance_sprite[1] = 17;
    money_draw_balance_sprite[2] = floor((money_display/1000) mod 10);
    money_draw_balance_sprite[3] = floor((money_display/100) mod 10);
    money_draw_balance_sprite[4] = floor((money_display/10 mod 10));
    money_draw_balance_sprite[5] = floor(money_display mod 10);

}

else if(money_display >= 100)
{
    //empty
    money_draw_balance_sprite[0] = 17;
    
    money_draw_balance_sprite[1] = 17;
    money_draw_balance_sprite[2] = 17;
    money_draw_balance_sprite[3] = floor((money_display/100) mod 10);
    money_draw_balance_sprite[4] = floor((money_display/10 mod 10));
    money_draw_balance_sprite[5] = floor(money_display mod 10);

}
else if(money_display >= 10)
{
    //empty
    money_draw_balance_sprite[0] = 17;
    
    money_draw_balance_sprite[1] = 17;
    money_draw_balance_sprite[2] = 17;
    money_draw_balance_sprite[3] = 17;
    money_draw_balance_sprite[4] = floor((money_display/10 mod 10));
    money_draw_balance_sprite[5] = floor(money_display mod 10);

}

else if(money_display >= 0)
{
    
    money_draw_balance_sprite[0] = 17;
    
    money_draw_balance_sprite[1] = 17;
    money_draw_balance_sprite[2] = 17;
    money_draw_balance_sprite[3] = 17;
    money_draw_balance_sprite[4] = 17;
    money_draw_balance_sprite[5] = floor(money_display mod 10);
}
}


//if negative
else if(money_display < 0)
{
    
}


