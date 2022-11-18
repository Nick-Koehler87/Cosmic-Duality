//colision with P2, does damage, knockback, and ends the projectiles flight
other.hp -= self.damage;
audio_play_sound(snd_p2gasp, 10, false);
if place_empty(other.x + lengthdir_x(knockback, direction), other.y, obj_blocker) then other.x += lengthdir_x(knockback, direction);
if place_empty(other.x, other.y + lengthdir_y(knockback, direction), obj_blocker) then other.y += lengthdir_y(knockback, direction);
instance_destroy(self);



