//Location of timer in room
var _xx = room_width/2-25;
var _yy = room_height-1030;

draw_set_color(c_white);
draw_set_font(fnt_score);
draw_text(_xx,_yy, string(timer_min) + ":" + string_repeat("0", 2 - string_length(string(timer_sec))) + string(timer_sec));


//old timer draw code, may delete later
/*
if (timer_min==0 && timer_sec==0) // if text equals 00:00
{ 
   //This indicates the time is  00:00.
   draw_text(_xx,_yy,string("0") + string(timer_min) + string(":") + string(timer_sec) + string("0"));
}
else if (timer_min>=10) // if text is greater than 10 _min
{
   if (timer_sec>=10) // if _sec equals or is greater than 10
   {
       draw_text(_xx,_yy,string(timer_min) + string(":") + string(timer_sec));
   }
   else if (timer_sec<=9)  // if sec is less than 9.
   {
       draw_text(_xx,_yy,string(timer_min) + string(":0") + string(timer_sec)); 
   }
     
}
else if (timer_min<10) // if min is less than 10.
{
   if (timer_sec>=10) // if sec is greater than 10.
   {
       draw_text(_xx,_yy,string("0") + string(timer_min) + string(":") + string(timer_sec));
   }
   else if (timer_sec<=9) // if sec is less than 9.
   {
       draw_text(_xx,_yy,string("0") + string(timer_min) + string(":0") + string(timer_sec)); 
   }
}
*/

