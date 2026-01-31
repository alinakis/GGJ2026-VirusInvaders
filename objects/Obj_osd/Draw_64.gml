// ---------- TIMER ----------

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var elapsed_ms = current_time - start_time;
var total_seconds = elapsed_ms div 1000;

var minutes = total_seconds div 60;
var seconds = total_seconds mod 60;

draw_text(
    ui_x_timer_margin,
    ui_y_timer_margin,
    string(minutes) + ":" + string_format(seconds, 2, 0)
);

// ---------- BARS ----------

draw_set_font(fnt_stats);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


var ui_y = ui_y_bar_margin + 32;
var ui_x = ui_x_bar_margin + 0;

draw_bar(
    "Virus Load",
    global.virus_load,
    ui_x,
    ui_y,
    ui_bar_width,
    ui_bar_height,
    ui_segments,
    ui_segment_gap,
    ui_label_width
);
ui_y += 32;

draw_bar(
    "Injections",
    global.injections,
    ui_x,
    ui_y,
    ui_bar_width,
    ui_bar_height,
    ui_segments,
    ui_segment_gap,
    ui_label_width
);
ui_y += 32;

draw_bar(
    "Masks",
    global.masks,
    ui_x,
    ui_y,
    ui_bar_width,
    ui_bar_height,
    ui_segments,
    ui_segment_gap,
    ui_label_width
);
