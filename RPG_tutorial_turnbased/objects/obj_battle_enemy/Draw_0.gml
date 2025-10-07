draw_self();

var _x = xstart - 20;
var _y = ystart + 20;
var _w = 40;
var _h = 8;
var _hp_width = _w * data.hp / data.hp_total;

draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _hp_width, _h, c_red, 1);