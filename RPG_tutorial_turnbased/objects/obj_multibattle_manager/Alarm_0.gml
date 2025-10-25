if (enemy_index < array_length(enemy_list)) {
    // we need to check if the enemy still exists in case
    // it was killed by the player.
    if (!instance_exists(enemy_list[enemy_index])) {
        enemy_index++;
        alarm[0] = 1;
    } else {
        enemy_list[enemy_index].attack();
        enemy_index++;
        alarm[0] = 120;
    }
} else {
	player_turn = true;
}