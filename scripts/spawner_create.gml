#define spawner_create
//-0: DEFINE USER VARIABLES--

u_customer_perH = 10;
u_passerby_perH = 10;


//-1: DEFINE VARIABLES--
spawner_create_customer_spawnRate();

spawner_customer_spawnGauss = 0;
spawner_customer_currentH = 0;
spawner_customer_spawn_time[0] = 0;
spawner_current_n = 0;

//--2. INIT SCRIPTS
spawner_hour_update();



#define spawner_create_customer_spawnRate
//--DEFINE PEAK SPAWN RATE--
spawner_customer_spawnRate_peak = 1;
spawner_customer_deviation = 0.10;


//--DEFINE EACH HOURS SPAWN RATE--
spawner_customer_spawnRate[0] = 0.05 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[1] = 0.05 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[2] = 0.05 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[3] = 0.05 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[4] = 0.10 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[5] = 0.15 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[6] = 0.25 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[7] = 0.60 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[8] = 0.80 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[9] = 0.50 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[10] = 0.65 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[11] = 0.85 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[12] = 1.00 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[13] = 0.95 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[14] = 0.90 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[15] = 0.80 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[16] = 0.90 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[17] = 1 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[18] = 0.95 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[19] = 0.80 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[20] = 0.65 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[21] = 0.50 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[22] = 0.40 / spawner_customer_spawnRate_peak;
spawner_customer_spawnRate[23] = 0.30 / spawner_customer_spawnRate_peak;