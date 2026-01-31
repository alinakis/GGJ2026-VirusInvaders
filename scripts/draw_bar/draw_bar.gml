function draw_bar(
    _label,
    _value,
    _x,
    _y,
    _bar_width,
    _bar_height,
    _segments,
    _gap,
    _label_width
)
{
    var v = clamp(_value, 0, _segments);

    // Label
    draw_text(_x, _y, _label);

    // Bar origin
    var bar_x = _x + _label_width;

    // Segment width
    var seg_w = (_bar_width - (_gap * (_segments - 1))) div _segments;

    for (var i = 0; i < _segments; i++)
    {
        var sx = bar_x + i * (seg_w + _gap);

        if (i < v)
            draw_set_color(c_lime);
        else
            draw_set_color(c_dkgray);

        draw_rectangle(
            sx,
            _y + 4,
            sx + seg_w,
            _y + 4 + _bar_height,
            false
        );
    }

    draw_set_color(c_white);
}
