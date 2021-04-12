#define qte_create
qte_target = 0;
qte_timer = 0;
qte_amount = 0;

qte_active = 0;

qte_event_current = 0;

enum qte_event
{
    null = 0,
    pour = 1
}

///0 = not started
// 1 = started 
// 2 = ended
qte_status = 0;

//from 0 (F) to 1 (S+)
qte_score = 0;

//time in delta_t for failstate
qte_under_fail = 0;
qte_over_fail = 0;

//time to end screen
qte_alarm_end = 1;


//complete trigger
enum qte_complete {
    null = 0,
    fail = 1,
    over_fail = 2,
    under_fail = 3,
    pass = 4
}

qte_complete_trigger = 0;

qte_adsr_exp_slow = 10;
qte_adsr_exp_fast = 0.1;

qte_gui_score_x = 0;
qte_gui_score_y = 0;


#define qte_pour_create

qte_pour_target = 1;


//ADSR
//X matrix is the ADSR NODES
//Y matrix is:
//0 = TIME POSITION (between 0-1)
//1 = START VALUE
//2 = TYPE OF CURVE (0 linear, 1 exp)
//3 = MULTIPLIER
//4 = exp

qte_pour_score_adsr = ds_grid_create(3,5);

qte_pour_score_adsr[#0,0] = 0;
qte_pour_score_adsr[#0,1] = 0;
qte_pour_score_adsr[#0,2] = 1;
qte_pour_score_adsr[#0,3] = 1;
qte_pour_score_adsr[#0,4] = qte_adsr_exp_slow; 


qte_pour_score_adsr[#1,0] = qte_pour_target;
qte_pour_score_adsr[#1,1] = qte_pour_score_adsr[0,1]+ qte_pour_score_adsr[0,3];
qte_pour_score_adsr[#1,2] = 1;
qte_pour_score_adsr[#1,3] = -1;
qte_pour_score_adsr[#1,4] = qte_adsr_exp_fast; 

qte_pour_score_adsr[#2,0] = 1;
qte_pour_score_adsr[#2,1] = qte_pour_score_adsr[1,1]+ qte_pour_score_adsr[1,3];
qte_pour_score_adsr[#2,2] = 1;
qte_pour_score_adsr[#2,3] = 0;
qte_pour_score_adsr[#2,4] = qte_adsr_exp_fast; 