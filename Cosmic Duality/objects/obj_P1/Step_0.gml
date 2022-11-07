
//used for determining shot direction
direct = "0";
directN = "0";

//basic movement
if (keyboard_check(ord("A"))) {
	//left
	x -= 5;	
	direct = "1";
	directN = 180;
}
if (keyboard_check(ord("D"))) {
	//right
	x += 5;	
	direct = "2";
	directN = 0;
}
if (keyboard_check(ord("W"))) {
	//up
	y -= 5;	
	if (direct == "0") then	directN = 90;
	if (direct == "1") then	directN = 135;
	if (direct == "2") then	directN = 45;
}
if (keyboard_check(ord("S"))) {
	//down
	y += 5;	
	if (direct == "0") then	directN = 270;
	if (direct == "1") then	directN = 225;
	if (direct == "2") then	directN = 315;
}

//shooting mechanic (based on movement direction)
if (shoot == true and keyboard_check(ord("C"))) {
	this = instance_create_layer(x, y, "Instances", obj_projectileP1);
	this.direction = directN;
	shoot = false;
	alarm_set(0,30);
}
