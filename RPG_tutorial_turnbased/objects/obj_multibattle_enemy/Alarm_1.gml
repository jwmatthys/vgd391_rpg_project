scale = animcurve_channel_evaluate(attack_scale_channel, curve_position);
x = xstart + animcurve_channel_evaluate(attack_x_channel, curve_position);

if (curve_position < 1) {
    curve_position += curve_speed;
    alarm[1] = 1;
} else {
    scale = 1;
    x = xstart;
}