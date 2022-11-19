//look at obj_projectile_P1
damage = 0;
knockback = 0;
if global.p2Type == 0 {
	scr_balancedShot(self);	
}else if global.p2Type == 1 {
	scr_powerShot(self);	
}else if global.p2Type == 2 {
	scr_rapidShot(self);	
}

sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
