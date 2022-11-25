
draw_healthbar(1875, 30, 1890, 150, hp, c_black, c_red, c_green, 3, true, true);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
s = "Player2 Victorys: " + string(global.p2Score);
draw_text(1610,55,s);