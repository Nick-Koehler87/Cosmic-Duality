//damage knockback and speed are the 3 basic things everyshot will have
damage = 0;
knockback = 0;
speed  = 0;
shotType = 0; //not used yet but will be used as an instance verson of p1Type
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

//set sprite animation
sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
