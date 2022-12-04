//Background image for player 2 HUD
//draw_sprite(spr_evilHud, image_index, 1710, 117);
draw_healthbar(1469, 0, 1494, 222, hp, c_black, c_red, c_green, 3, true, true);

draw_set_color(c_orange);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
s = "Player2 Victorys: " + string(global.p2Score);
draw_text(1520,55,s);
draw_text(1520,110,"Player2 attack type: " + string(global.p2Type));

