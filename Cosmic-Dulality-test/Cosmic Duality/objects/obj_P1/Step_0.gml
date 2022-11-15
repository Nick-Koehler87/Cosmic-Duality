
direct = "0";
directN = "180";

if hp < 0 then room_goto(rm_victorGood);

//basic movement
if (keyboard_check(vk_left)) {
	//left
	if place_empty(x-7, y, obj_blocker) then x -= 5;		
	direct = "1";
	directN = 180;
}
if (keyboard_check(vk_right)) {
	//right
	if place_empty(x-7, y, obj_blocker) then x += 5;	
	direct = "2";
	directN = 0;
}
if (keyboard_check(vk_up)) {
	//up
	if place_empty(x, y-7, obj_blocker) then y -= 5;	
	if (direct == "0") then	directN = 90;
	if (direct == "1") then	directN = 135;
	if (direct == "2") then	directN = 45;
}
if (keyboard_check(vk_down)) {
	//down
	if place_empty(x, y+7, obj_blocker) then y += 5;
	if (direct == "0") then	directN = 270;
	if (direct == "1") then	directN = 225;
	if (direct == "2") then	directN = 315;
}

//shooting mechanic (based on movement direction)
if (shoot == true and keyboard_check(vk_numpad1)) {
	this = instance_create_layer(x, y, "Instances", obj_projectileP2);
	this.direction = directN;
	this.image_angle = directN;
	shoot = false;
	switch (global.p1Type) {
		case 0:
			alarm_set(0,60);
			break
		case 1:
			alarm_set(0,240);
			break
		case 2:
			alarm_set(0,30);
			break
	}
	
	audio_play_sound(shooting, 10, false);
}

if (port == true and keyboard_check(vk_numpad2)) {
	instance_create_layer(x,y,layer,obj_portP2)
	if place_empty(x+lengthdir_x(320, directN), y, obj_blocker) then x += lengthdir_x(320, directN)
	if place_empty(x, y+lengthdir_y(320, directN), obj_blocker) then y += lengthdir_y(320, directN)
	instance_create_layer(x, y,layer,obj_portP2)
	port = false;
	alarm_set(1, 30);
}
