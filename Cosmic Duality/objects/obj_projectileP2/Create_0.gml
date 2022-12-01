//damage knockback and speed are the 3 basic things everyshot will have
damage = 0;
knockback = 0;
speed  = 0;
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
	case 3:
		scr_peirceShot(self);
		break
	case 4:
		scr_aoeShot(self);
		break
}

//start animation
sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);

switch global.p1Type {
	case 0:
		sprite_index = spr_balancedP2
		image_xscale = .80
		image_xscale = .80
		break
	case 1:
		sprite_index = spr_balancedP2
		image_xscale = 1.25
		image_xscale = 1
		break
	case 2:
		sprite_index = spr_balancedP2
		image_xscale = .75
		image_xscale = .55
		break
	case 3:
		sprite_index = spr_pierceP2
		image_xscale = .75
		image_xscale = .70
		break
	case 4:
		sprite_index = spr_aoeP2
		image_xscale = 1.25
		image_xscale = 1
}