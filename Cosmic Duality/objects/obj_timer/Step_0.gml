//If loop for when timer hits limit
ms -=1;
if ms = 0
{
	ms=60;
	timer_sec -=1;
}

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

if (timer_min==0 && timer_sec==0)
{
	//Add code for when timer hits its limit
	timer_min = 0;
	timer_sec = 0;
	ms = 0;
}

/*
//Updates minutes and seconds for timer
else
{
	if timer_sec==0
	{           
		timer_min-=1/room_speed;
		timer_sec=60/room_speed;
	}
	else
	{
		timer_sec-=1/room_speed;
	}          
}
*/


