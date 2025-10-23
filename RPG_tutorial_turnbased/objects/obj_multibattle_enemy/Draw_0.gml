draw_shadow();
draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, 1);

//if (selected and scale == 1) {
//    draw_rectangle(x - sprite_width / 2, y - sprite_height / 2, 
//    x + sprite_width / 2, y + sprite_height / 2, true);
//}

var _x = xstart - 20;
var _y = ystart + 20;
var _w = 40;
var _h = 8;
var _hp_width = _w * hp / hp_total;

draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _hp_width, _h, c_red, 1);

