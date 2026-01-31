// Movement
if (keyboard_check(vk_left))
    x -= move_speed;

if (keyboard_check(vk_right))
    x += move_speed;

// Keep inside room
x = clamp(x, 16, room_width-16);

// Shooting
fire_timer--;

if (keyboard_check(vk_space) && fire_timer <= 0 && global.injections > 0)
{
    instance_create_layer(x, y - 20, "Instances", Obj_bullet);
	global.injections --;
    fire_timer = fire_delay;
}
