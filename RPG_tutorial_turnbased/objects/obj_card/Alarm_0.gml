scale = animcurve_channel_evaluate(scale_channel, curve_position);

if (curve_position < 1) {
    curve_position += curve_speed;
    alarm[0] = 1;
}
else scale = 1;