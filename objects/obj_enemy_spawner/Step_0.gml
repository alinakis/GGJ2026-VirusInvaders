spawn_timer--;

if (spawn_timer <= 0)
{
    var spawn_x = irandom(room_width - 32);
    instance_create_layer(spawn_x, -32, "Instances", Obj_virus);
    spawn_timer = spawn_delay;
}
