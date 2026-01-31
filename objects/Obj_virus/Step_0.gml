y += fall_speed;

// If enemy reaches bottom → destroy or handle life loss
if (y > room_height + 32)
    instance_destroy();
