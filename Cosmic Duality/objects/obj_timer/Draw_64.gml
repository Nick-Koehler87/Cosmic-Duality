//Location of timer in room
var _xx = room_width/2-25;
var _yy = room_height-1030;

draw_set_color(c_white);
draw_set_font(fnt_score);
draw_text(_xx,_yy, string(timer_min) + ":" + string_repeat("0", 2 - string_length(string(timer_sec))) + string(timer_sec));




