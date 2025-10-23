if (obj_multibattle_manager.player_turn) {
    with(obj_multibattle_enemy) {
        selected = false;
        scale = 1;
    }
    selected = true;
    curve_position = 0;
    alarm[0] = 1;
}