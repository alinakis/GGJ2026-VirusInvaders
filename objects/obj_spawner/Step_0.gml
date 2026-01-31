virus_spawn_timer--;
injection_spawn_timer--;
mask_spawn_timer--;
pill_spawn_timer--;

if (virus_spawn_timer <= 0)
{
    var spawn_x = irandom_range(20, room_width - 20);
    instance_create_layer(spawn_x, 180, "Instances", Obj_virus); // was -32
    virus_spawn_timer = global.virus_spawn_delay;
}

if (injection_spawn_timer <= 0)
{
    var spawn_x = irandom_range(20, room_width - -20);
    instance_create_layer(spawn_x, 180, "Instances", Obj_injection); // was -32
    injection_spawn_timer = injection_spawn_delay;
}

if (mask_spawn_timer <= 0)
{
    var spawn_x = irandom_range(20, room_width - 20);
    instance_create_layer(spawn_x, 180, "Instances", Obj_mask); // was -32
    mask_spawn_timer = mask_spawn_delay;
}

if (pill_spawn_timer <= 0)
{
    var spawn_x = irandom_range(20, room_width - 20);
    instance_create_layer(spawn_x, 180, "Instances", Obj_pill); // was -32
    pill_spawn_timer = pill_spawn_delay;
}

if (current_time >= global.next_speed_increase)
{
    global.virus_speed += global.virus_increment;
    global.next_speed_increase = current_time + 20000; // next 20s
	if (global.virus_spawn_delay > 4) {
		global.virus_spawn_delay = global.virus_spawn_delay - 2;
	}
}
