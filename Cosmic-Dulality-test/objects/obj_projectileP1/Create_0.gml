//damage knockback and speed are the 3 basic things everyshot will have
damage = 0;
knockback = 0;
//depending on type which is determined in obj_controler, a script will initalize each diffrent shot time
if global.p1Type == 0 {
	scr_balancedShot(self);	
}else if global.p1Type == 1 {
	scr_powerShot(self);	
}else if global.p1Type == 2 {
	scr_rapidShot(self);	
}

sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
