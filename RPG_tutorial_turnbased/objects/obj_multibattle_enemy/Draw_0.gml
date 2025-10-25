
if (hp > 0) {
    var _x = xstart - 15;
    var _y = ystart + 10;
    var _w = 30;
    var _h = 5;
    var _hp_width = _w * hp / hp_total;

    draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h);
    draw_sprite_stretched_ext(spr_box, 1, _x, _y, _hp_width, _h, c_red, 1);    
}

draw_shadow();
draw_sprite_ext(sprite_index, floor(image_index), x, y, scale, scale, 0, c_white, 1);
