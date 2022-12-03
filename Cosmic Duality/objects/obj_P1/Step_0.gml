//no cooldown cheat
if global.noCooldown {
	shoot = true;
	port = true;
}

//shooting mechanic (based on movement direction)
if (shoot == true and keyboard_check(ord("R"))) {
	reloading = true;
	this = instance_create_layer(x, y, "Instances", obj_projectileP1);
	this.direction = point_direction(x,y,obj_P2.x,obj_P2.y);
	this.image_angle = point_direction(x,y,obj_P2.x,obj_P2.y);
	shoot = false;
	//deterined in obj_controller
	switch (global.p1Type) {
		case 0:
			alarm_set(0,30);
			break
		case 1:
			alarm_set(0,80);
			break
		case 2:
			alarm_set(0,10);
			break
		case 3:
			alarm_set(0,40);
			break
		case 4:
			alarm_set(0,80);
			break
	}
	//Play snd_shoot
	audio_play_sound(snd_shoot, 5, false);
}

//teleport
//TODO: smooth out so that the teleport is more natural and feels right (low priority)
if (port == true and keyboard_check(ord("T"))) {
	instance_create_layer(x,y,layer,obj_portP1)
	if place_empty(x+lengthdir_x(320, directN), y, obj_blocker) and x+lengthdir_x(320, directN) < 1920 and x+lengthdir_x(320, directN) > 0 then x += lengthdir_x(320, directN)
	if place_empty(x, y+lengthdir_y(320, directN), obj_blocker) and y+lengthdir_y(320, directN) < 1080 and y+lengthdir_y(320, directN) > 0 then y += lengthdir_y(320, directN)
	instance_create_layer(x, y,layer,obj_portP1)
	port = false;
	alarm_set(1, 30);
	
	//Play snd_teleport
	audio_play_sound(snd_teleport, 5, false);
}

//if P1 looses 
if hp < 0 {
	//Play snd_p1Death and snd_badWin
	//Stop snd_arena1 and snd_arena2
	audio_stop_sound(snd_arena1)
	audio_stop_sound(snd_arena2)
	audio_play_sound(snd_p1Death, 5, false);
	audio_play_sound(snd_badWin, 1000, true);
	global.p2Score += 1;
	room_goto(rm_victorEvil);
}

//idle
//todo:implement idle
sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);

//basic movement
if (keyboard_check(ord("A"))) {
	//left
	sprite_index = spr_p1walkSide
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = .65
	image_yscale = .65
	if place_empty(x-7, y, obj_blocker) then x -= 5;	
	direct = "1";
	directN = 180;
}else {
	direct = "0";
}
if (keyboard_check(ord("D"))) {
	//right
	sprite_index = spr_p1walkSide
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = -.65
	image_yscale = .65
	if place_empty(x+7, y, obj_blocker) then x += 5;	
	direct = "2";
	directN = 0;
} else if not(keyboard_check(ord("A"))) {
	direct = "0";
}
if (keyboard_check(ord("W"))) {
	//up
	sprite_index = spr_p1walkUp
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = .65
	image_yscale = .65
	if place_empty(x, y-7, obj_blocker) then y -= 5;	
	if (direct == "0") then	directN = 90;
	if (direct == "1") then	directN = 135;
	if (direct == "2") then	directN = 45;
}
if (keyboard_check(ord("S"))) {
	//down
	sprite_index = spr_p1walkDown
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = .65
	image_yscale = .65
	if place_empty(x, y+7, obj_blocker) then y += 5;	
	if (direct == "0") then	directN = 270;
	if (direct == "1") then	directN = 225;
	if (direct == "2") then	directN = 315;
}

//tick is the invincibility timer. when equal to 10, the player is exposed to enviromental damage which will reset tick to 0
if tick < 10 {
	tick += 1;	
}

//heal for small amount over time
if hp < 100 {
	hp += .01
}

if shoot == false and reloading == false {
	switch (global.p1Type) {
		case 0:
			alarm_set(0,30);
			break
		case 1:
			alarm_set(0,80);
			break
		case 2:
			alarm_set(0,10);
			break
		case 3:
			alarm_set(0,40);
			break
		case 4:
			alarm_set(0,80);
			break
	}
	reloading = true
}