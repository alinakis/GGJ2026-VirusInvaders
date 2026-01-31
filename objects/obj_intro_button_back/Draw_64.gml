// Draw button background
if (pressed)
    draw_set_color(c_maroon); // pressed color
else
    draw_set_color(c_red); // normal color

draw_roundrect(button_x, button_y,
               button_x + button_width,
               button_y + button_height, false);

// Draw button label
draw_set_font(fnt_intro_buttons);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(button_x + button_width/2,
          button_y + button_height/2,
          button_label);
