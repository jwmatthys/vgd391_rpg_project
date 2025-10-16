_gain = 0.1 * clamp((1 - distance_to_object(obj_player) / 320), 0, 1);
audio_play_sound(step_sound, 10, false, _gain, 0, random_range(0.8, 1.2));
alarm[1] = irandom_range(8,11);