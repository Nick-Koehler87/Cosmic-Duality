//Alarm loop to substract time
if alarm[0] = 0
{
	alarm[0] = 60;
	timer_sec +=1;
}

//Example 1:00 > 0:59
if timer_sec = -1
{
	timer_min -= 1;
	timer_sec = 59;
}


if timer_sec >= 60
{
	timer_min += 1;
	timer_sec -= 60;
}




