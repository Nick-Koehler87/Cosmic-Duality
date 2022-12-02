//if bounce shot, bounce, otherwise destroy
switch (shotType) {
	case 3:
		//wall peicre shot doesnot destroy
		break;
	case 5:
		speed *= -1
		image_angle = image_angle - 180
		break
	default:
		instance_destroy(self);
		break;
}
