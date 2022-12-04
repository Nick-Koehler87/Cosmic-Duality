sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
switch global.p2Type {
	case 0:
		sprite_index = spr_balancedP2
		image_xscale = .80
		image_yscale = .80
		break
	case 1:
		sprite_index = spr_balancedP2
		image_xscale = 1.50
		image_yscale = 1
		break
	case 2:
		sprite_index = spr_balancedP2
		image_xscale = .55
		image_yscale = .55
		break
	case 3:
		sprite_index = spr_pierceP2
		image_xscale = .75
		image_yscale = .70
		break
	case 4:
		sprite_index = spr_aoeP2
		image_xscale = 1.25
		image_yscale = 1
}

image_xscale *= -1