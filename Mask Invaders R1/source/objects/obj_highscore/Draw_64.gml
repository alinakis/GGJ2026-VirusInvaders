draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_red);
draw_set_font(fnt_title);
draw_text(room_width/2, (room_height/2)-100, "HIGHSCORE");


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(fnt_instructions);
draw_text_ext((room_width/2)-90, (room_height/2), "01. XXX 06:25\n02. QRZ 05:11\n03. RTY 05:09\n04. ASD 04:55\n05. AAA 04:30\n06. LKJ 04:20\n07.VBN 03:45\n08. OIU 03:29\n09. APH 02:05\n10. AAB 01:30 ", 45, 200);