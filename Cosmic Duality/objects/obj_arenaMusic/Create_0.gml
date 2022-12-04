//Stops title music
audio_stop_sound(snd_title);
//randomize and play music for arena
randomize()
global.music = choose(snd_arena1,snd_arena2,snd_arena3)
audio_play_sound(global.music,1000,true);


/*
randomize()
var music = choose(snd_arena1,snd_arena2,snd_arena3)
music_list[0] = music
randomize()
var music = choose(snd_arena1,snd_arena2,snd_arena3)
music_list[1] = music
randomize()
var music = choose(snd_arena1,snd_arena2,snd_arena3)
music_list[2] = music

for (var i = 0; i < array_length_1d(music_list); ++i) {
	audio_play_sound(music_list[i],1000,false);
	
}
*/

