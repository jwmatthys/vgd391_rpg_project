sprite_index = sprite;
selected = false;
curve_struct = animcurve_get(anim_card_selected);
scale_channel = animcurve_get_channel(curve_struct, "scale");
curve_position = 0;
curve_speed = 0.03;
scale = 1;