hp = 3;
hp_total = 3;
damage = 0;
dungeon_id = 0;
xp_value = 0;
selected = false;

curve_struct = animcurve_get(anim_enemy_selected);
scale_channel = animcurve_get_channel(curve_struct, "scale");
attack_curve_struct = animcurve_get(anim_enemy_attack);
attack_scale_channel = animcurve_get_channel(attack_curve_struct, "scale");
attack_x_channel = animcurve_get_channel(attack_curve_struct, "x");
curve_position = 0;
curve_speed = 0.03;
scale = 1;

inflict_damage = function(amt) {
    hp -= amt;
    if (hp <= 0) {
        if (object_exists(obj_multibattle_switcher)) {
            array_push(obj_multibattle_switcher.defeated_enemies, self.dungeon_id); 
        }
        obj_multibattle_switcher.accumulated_xp += xp_value;
        alarm[2] = 1;
    }
}

attack = function() {
    obj_multibattle_player.inflict_damage(damage);
    audio_play_sound(snd_enemy_hit, 10, false);
    curve_position = 0;
    alarm[1] = 1;
}