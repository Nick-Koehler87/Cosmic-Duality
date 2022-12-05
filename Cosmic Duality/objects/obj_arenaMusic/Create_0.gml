//Stops title music
audio_stop_sound(snd_title);
//randomize and play music for arena
randomize()
global.music = choose(snd_arena1,snd_arena2,snd_arena3)
audio_play_sound(global.music,1000,true);

