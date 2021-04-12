//audio_music_play(songNumber)

//1. reset timer
audio_music_timer = 0;
audio_music_alarm = audio_sound_length(argument[0]);



//2. Play the Music
audio_music_current = audio_play_sound(argument[0], 1, 0);
