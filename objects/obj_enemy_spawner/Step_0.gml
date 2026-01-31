spawn_timer--;

if (spawn_timer <= 0)
{
    var spawn_x = irandom_range(16, room_width - 16);
    instance_create_layer(spawn_x, 160, "Instances", Obj_virus); // was -32
    spawn_timer = spawn_delay;
}


if (current_time >= global.next_speed_increase)
{
    global.virus_speed += global.virus_increment;
    global.next_speed_increase = current_time + 20000; // next 20s
}
