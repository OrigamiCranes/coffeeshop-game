//audio_music_stop()

//1. Reset Timer
audio_music_timer = 0;
audio_music_alarm = -1;

//2. Stop Sound
audio_stop_sound(audio_music_current)

//3. Delete Sound
audio_music_current = 0;
