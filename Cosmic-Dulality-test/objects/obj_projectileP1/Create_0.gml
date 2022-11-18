//damage knockback and speed are the 3 basic things everyshot will have
damage = 0;
knockback = 0;
speed  = 0;
//shotType isn't used yet but will e
shotType = 0;
//depending on type which is determined in obj_controler, a script will initalize each diffrent shot time
switch (global.p1Type) {
	case 0:
		scr_balancedShot(self);	
		break
	case 1:
		scr_powerShot(self);
		break
	case 2:
		scr_rapidShot(self);
		break
}

//start animation
sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
