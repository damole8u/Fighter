var drawSec
drawSec = floor(global.seconds);


draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_orange);
draw_set_font(fTimer);

var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
draw_text (cw/2+200, cy + 80, string(drawSec));