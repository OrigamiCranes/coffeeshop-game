#define qte_score_calculate
//qte_score_calculate()

//1. Transfer the Score
qte_score_calculate_transfer();

//2. Calculate the Score
var n = 0;
while(n < ds_grid_width(score_adsr))
{
    //check if  the timer is between the adsr_nodes
    if(qte_amount >= score_adsr[# n, 0])
    {
        if(qte_amount <= score_adsr[# n+1,0])
        {
                qte_score_calculate_adsr(n);
                break;
        }
    }
    
    n++;
}

//3. Delete the score
ds_grid_destroy(score_adsr);

#define qte_score_calculate_adsr
//qte_score_calculate_adsr()
var n = argument[0];

var adsr_timer = (qte_timer-score_adsr[# n,0])/score_adsr[# n+1,1]
            
    //route depending on curve type
    if(score_adsr[# n,2] == 0)
    {
        var adsr_out = adsr_linear(adsr_timer,score_adsr[# n,3])
    }
    else if(score_adsr[# n,2] == 1)
    {
        var adsr_out = adsr_exp(adsr_timer,score_adsr[# n,3],score_adsr[# n,4])
    }
   
    qte_score = (adsr_out * score_adsr[# n,3])+score_adsr[# n,1];
           

#define qte_score_calculate_transfer

switch(qte_event_current)
{
    case qte_event.pour:
    {
        ds_grid_copy(score_adsr,qte_pour_score_adsr);
    }
    break;
}