// Movement
if (keyboard_check(vk_left))
    x -= move_speed;

if (keyboard_check(vk_right))
    x += move_speed;

// Keep inside room
x = clamp(x, 0, room_width);

// Shooting
fire_timer--;

if (keyboard_check(vk_space) && fire_timer <= 0)
{
    instance_create_layer(x, y - 20, "Instances", obj_bullet);
    fire_timer = fire_delay;
}
