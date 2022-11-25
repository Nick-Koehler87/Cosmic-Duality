
if keyboard_check_pressed(ord("0")) {
	setShot = 0;
}
if keyboard_check_pressed(ord("1")) {
	setShot = 1;
}
if keyboard_check_pressed(ord("2")) {
	setShot = 2;
}
if keyboard_check_pressed(ord("3")) {
	setShot = 3;
}
if keyboard_check_pressed(vk_tab) {
	setShot = -1;
}

if (not(setShot == -1)) {
	global.p1Type = setShot;
	global.p2Type = setShot;
}