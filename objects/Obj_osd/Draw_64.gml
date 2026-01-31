// ---------- TIMER ----------
var elapsed_ms = current_time - start_time;
var total_seconds = elapsed_ms div 1000;

var minutes = total_seconds div 60;
var seconds = total_seconds mod 60;

draw_text(
    uix_margin,
    uiy_margin,
    string(minutes) + ":" + string_format(seconds, 2, 0)
);

// ---------- BARS ----------
var ui_y = uiy_margin + 32;
var ui_x = uix_margin + 0;

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
