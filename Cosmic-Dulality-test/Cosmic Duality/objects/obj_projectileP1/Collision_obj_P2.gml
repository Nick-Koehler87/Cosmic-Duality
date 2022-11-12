 /// @description Insert description here
// You can write your code in this editor



other.hp -= self.damage;
other.x += lengthdir_x(knockback, direction);
other.y += lengthdir_y(knockback, direction);
instance_destroy(self);


