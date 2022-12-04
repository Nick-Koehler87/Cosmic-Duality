//Background image for player 1 HUD
//draw_sprite(spr_goodHud, image_index, 215, 117);
//healthbar
draw_healthbar(420, 0, 445, 222, hp, c_black, c_red, c_green, 3, true, true);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
s = "Player1 Victorys: " + string(global.p1Score);
draw_text(20,55,s);
draw_text(20,110,"Player1 attack type: " + string(global.p1Type));

