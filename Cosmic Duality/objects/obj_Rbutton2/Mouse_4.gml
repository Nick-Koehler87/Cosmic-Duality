//just for changing rooms
if mouse_check_button_pressed(mb_left) {
	mx = window_mouse_get_x();
	my = window_mouse_get_y();
	if collision_point(mx,my,self,false,false) {
		room_goto(0)
		//Stop snd_badWin
		audio_stop_sound(snd_badWin);
	}
}