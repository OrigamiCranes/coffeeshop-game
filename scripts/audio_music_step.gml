//if the alarm is active
if(audio_music_on == 1)
{

if(audio_music_alarm != -1)
{


//1. add to the timer
audio_music_timer += global.dt_steady;

//2. check if its time
if(audio_music_timer >= audio_music_alarm)
{

    audio_music_timer = 0;
    
    
    //3. PLAY THE SONG
    audio_music_play(audio_next_song);

}

}
}
