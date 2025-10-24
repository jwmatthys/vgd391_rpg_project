draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, 1);

if (selected and scale == 1) {
    draw_rectangle(x - sprite_width / 2, y - sprite_height / 2, 
    x + sprite_width / 2, y + sprite_height / 2, true);
}