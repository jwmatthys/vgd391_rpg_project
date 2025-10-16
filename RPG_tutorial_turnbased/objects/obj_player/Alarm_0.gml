// footsteps
if (walking) {
    _audio_clip = choose_random_from_array(global.footstep_array);
    audio_play_sound(_audio_clip, 10, false, 0.25);
    alarm[0] = irandom_range(20,22);
}