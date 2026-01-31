draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_red);
draw_set_font(fnt_title);
draw_text(room_width/2, 70, "Instructions");


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(fnt_instructions);
draw_text_ext(200, 170, "     Viruses\nThose little rascals, they touch you and you get a virus load. Try to avoid them.", 25, 500);
draw_text_ext(200, 320, "     Injections\nYou can collect up to 4 injections. Those are your ammo. Shoot them back to kill the viruses.", 25, 500);
draw_text_ext(200, 450, "     Masks\nYou can collect up to 4 Masks. Those are your defence. You can not get a virus load as long as you have a mask.", 25, 500);
draw_text_ext(200, 610, "     Pills\nEach time you collect a pill, you reduce one virus load. You can not store pills.", 25, 500);
draw_text_ext(200, 735, "     You\nWithout mask, and with mask. Remember masks act as shields.", 25, 500);