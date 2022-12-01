//no cooldown
if global.noCooldown {
	shoot = true;
	port = true;
}


//shooting mechanic (based on movement direction)
if (shoot == true and keyboard_check(vk_numpad1)) {
	this = instance_create_layer(x, y, "Instances", obj_projectileP2);
	this.direction = point_direction(x,y,obj_P1.x,obj_P1.y);
	this.image_angle = point_direction(x,y,obj_P1.x,obj_P1.y);
	shoot = false;
	switch (global.p2Type)  {
		case 0:
			alarm_set(0,30);
			break
		case 1:
			alarm_set(0,120);
			break
		case 2:
			alarm_set(0,10);
			break
		case 3:
			alarm_set(0,40);
			break
		case 4:
			alarm_set(0,60);
			break
	}
}

if (port == true and keyboard_check(vk_numpad2)) {
	instance_create_layer(x,y,layer,obj_portP2)
	if place_empty(x+lengthdir_x(320, directN), y, obj_blocker) and x+lengthdir_x(320, directN) < 1920 and x+lengthdir_x(320, directN) > 0 then x += lengthdir_x(320, directN)
	if place_empty(x, y+lengthdir_y(320, directN), obj_blocker) and y+lengthdir_y(320, directN) < 1080 and y+lengthdir_y(320, directN) > 0 then y += lengthdir_y(320, directN)
	instance_create_layer(x, y,layer,obj_portP2)
	port = false;
	alarm_set(1, 30);
}


if hp < 0 {
	global.p1Score += 1;
	room_goto(rm_victorGood);
}


sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);

//basic movement
if (keyboard_check(vk_left)) {
	//left
	sprite_index = spr_p2walkSide
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = .75;
	if place_empty(x-7, y, obj_blocker) then x -= 5;		
	direct = "1";
	directN = 180;
} else {
	direct = "0";	
}
if (keyboard_check(vk_right)) {
	//right
	sprite_index = spr_p2walkSide
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = -.75;
	if place_empty(x+7, y, obj_blocker) then x += 5;	
	direct = "2";
	directN = 0;
} else if not (keyboard_check(vk_left)) {
	direct = "0";	
}
if (keyboard_check(vk_up)) {
	//up
	sprite_index = spr_p2walkUp
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = -.75;
	if place_empty(x, y-7, obj_blocker) then y -= 5;	
	if (direct == "0") then	directN = 90;
	if (direct == "1") then	directN = 135;
	if (direct == "2") then	directN = 45;
}
if (keyboard_check(vk_down)) {
	//down
	sprite_index = spr_p2walkDown
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	image_xscale = -.75;
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