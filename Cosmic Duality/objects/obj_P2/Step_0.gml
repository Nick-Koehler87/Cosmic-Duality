
//used for determining shot direction
direct = "0";
directN = "180";


if hp < 0 then instance_destroy(self);

//basic movement
if (keyboard_check(vk_left)) {
	//left
	x -= 5;	
	direct = "1";
	directN = 180;
}
if (keyboard_check(vk_right)) {
	//right
	x += 5;	
	direct = "2";
	directN = 0;
}
if (keyboard_check(vk_up)) {
	//up
	y -= 5;	
	if (direct == "0") then	directN = 90;
	if (direct == "1") then	directN = 135;
	if (direct == "2") then	directN = 45;
}
if (keyboard_check(vk_down)) {
	//down
	y += 5;	
	if (direct == "0") then	directN = 270;
	if (direct == "1") then	directN = 225;
	if (direct == "2") then	directN = 315;
}

//shooting mechanic (based on movement direction)
if (shoot == true and keyboard_check(vk_pageup)) {
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
}

if (port == true and keyboard_check(vk_pagedown)) {
	x += lengthdir_x(100, directN);
	y += lengthdir_y(100, directN);
	port = false;
	alarm_set(1, 120);
}
