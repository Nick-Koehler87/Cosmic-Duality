//if bounce shot, bounce, otherwise destroy
switch (shotType) {
	case 3:
		//wall peicre shot doesnot destroy
		break;
	default:
		instance_destroy(self);
		break;
}
