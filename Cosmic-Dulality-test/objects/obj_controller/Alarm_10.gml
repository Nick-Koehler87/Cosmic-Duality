//set projectile type randomly, each type of shot will have different parameters
global.p1Type = irandom_range(0,2);
global.p2Type = irandom_range(0,2);

//reset timer
alarm_set(10,200);