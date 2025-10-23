var _selected_enemy = noone;
with (obj_multibattle_enemy) {
    if (selected) _selected_enemy = id;
}
player_attack(_selected_enemy, data.damage);