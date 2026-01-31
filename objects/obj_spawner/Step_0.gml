virus_spawn_timer--;
injection_spawn_timer--;
mask_spawn_timer--;
pill_spawn_timer--;

if (virus_spawn_timer <= 0)
{
    var spawn_x = irandom_range(16, room_width - 16);
    instance_create_layer(spawn_x, 160, "Instances", Obj_virus); // was -32
    virus_spawn_timer = virus_spawn_delay;
}

if (injection_spawn_timer <= 0)
{
    var spawn_x = irandom_range(16, room_width - 16);
    instance_create_layer(spawn_x, 160, "Instances", Obj_injection); // was -32
    injection_spawn_timer = injection_spawn_delay;
}

if (mask_spawn_timer <= 0)
{
    var spawn_x = irandom_range(16, room_width - 16);
    instance_create_layer(spawn_x, 160, "Instances", Obj_mask); // was -32
    mask_spawn_timer = mask_spawn_delay;
}
/*
if (pill_spawn_timer <= 0)
{
    var spawn_x = irandom_range(16, room_width - 16);
    instance_create_layer(spawn_x, 160, "Instances", Obj_pill); // was -32
    pill_spawn_timer = pill_spawn_delay;
}
*/
if (current_time >= global.next_speed_increase)
{
    global.virus_speed += global.virus_increment;
    global.next_speed_increase = current_time + 20000; // next 20s
}
