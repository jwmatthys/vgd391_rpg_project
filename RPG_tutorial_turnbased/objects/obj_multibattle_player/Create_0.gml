attack_curve_struct = animcurve_get(anim_player_attack);
attack_scale_channel = animcurve_get_channel(attack_curve_struct, "scale");
attack_x_channel = animcurve_get_channel(attack_curve_struct, "x");
curve_position = 0;
curve_speed = 0.03;
scale = 1;

data = obj_multibattle_switcher.player_data;

take_damage = function(amount) {
    data.hp -= amount;
    if (data.hp <= 0) {
        audio_play_sound(snd_player_unalived, 10, false);
        scale = 1;
        alarm[1] = room_speed / 4;
    }
}

function player_attack (target, damage) {
    if (instance_exists(target)) {
        audio_play_sound(snd_player_hit, 10, false);
        curve_position = 0;
        alarm[0] = 1;
        target.selected = false;
        target.scale = 1;
        target.take_damage(damage);
    }
}