// Mouse input detection
if (mouse_check_button(mb_left))
{
    if (mouse_x > button_x && mouse_x < button_x + button_width &&
        mouse_y > button_y && mouse_y < button_y + button_height)
    {
        pressed = true;
    }
}
else
{
    // Mouse released
    if (pressed)
    {
        // Only trigger if previously pressed
        if (mouse_x > button_x && mouse_x < button_x + button_width &&
            mouse_y > button_y && mouse_y < button_y + button_height)
        {
            room_goto(target_room);
        }
        pressed = false;
    }
}
