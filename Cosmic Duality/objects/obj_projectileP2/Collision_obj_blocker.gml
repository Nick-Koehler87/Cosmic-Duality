//if bounce shot, bounce, otherwise destroy
switch (shotType) {
	case 0:
		instance_destroy(self);
		break;
	case 1:
		instance_destroy(self);
		break;
	case 2:
		instance_destroy(self);
		break;
	case 3:
		//wall peicre shot doesnot destroy
		break;
}
