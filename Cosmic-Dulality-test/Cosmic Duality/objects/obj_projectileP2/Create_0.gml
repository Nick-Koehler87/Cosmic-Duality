/// @description Insert description here
// You can write your code in this editor

damage = 0;
knockback = 0;
if global.p1Type == 0 {
	scr_balancedShot(self);	
}else if global.p1Type == 1 {
	scr_powerShot(self);	
}else if global.p1Type == 2 {
	scr_rapidShot(self);	
}


sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);







