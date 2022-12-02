sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
switch global.p1Type {
	case 0:
		sprite_index = spr_balancedP1
		image_xscale = .80
		image_xscale = .80
		break
	case 1:
		sprite_index = spr_balancedP1
		image_xscale = 1.25
		image_xscale = 1.25
		break
	case 2:
		sprite_index = spr_balancedP1
		image_xscale = .55
		image_xscale = .55
		break
	case 3:
		sprite_index = spr_pierceP1
		image_xscale = .70
		image_xscale = .70
		break
	case 4:
		sprite_index = spr_aoeP1
		image_xscale = 1
		image_xscale = 1
		break
}