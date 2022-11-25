//healthbar
draw_healthbar(30, 30, 45, 150, hp, c_black, c_red, c_green, 3, true, true);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
s = "Player1 Victorys: " + string(global.p1Score);
draw_text(70,55,s);



//TODO: Add UI to display shot type with picture