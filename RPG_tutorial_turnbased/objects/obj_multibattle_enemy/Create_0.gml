hp = 3;
hp_total = 3;
damage = 0;
dungeon_id = 0;
xp_value = 0;
selected = false;

curve_struct = animcurve_get(anim_enemy_selected);
scale_channel = animcurve_get_channel(curve_struct, "scale");
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
        instance_destroy(self);
    }
}

attack = function() {
    // TODO: add SFX and animation
    obj_multibattle_player.inflict_damage(damage);
}