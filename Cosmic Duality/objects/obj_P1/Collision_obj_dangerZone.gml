//every x frames take y damage
if tick >= 10 {
	hp -= 5;
	tick = 0;
} else {
	tick += 1;
}