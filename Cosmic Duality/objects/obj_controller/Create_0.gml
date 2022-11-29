//shot types for each player
global.p1Type = 0;
global.p2Type = 0;

//randomizes shot type
alarm_set(10,200);

//initalizes cheat
global.noCooldown = false;

//Players earn 1 point per round won
global.p1Score = 0;
global.p2Score = 0;

//cheat code to set shot type
setShot = -1;

//good job bryan that worked

audio_play_sound(snd_music, 5, true);