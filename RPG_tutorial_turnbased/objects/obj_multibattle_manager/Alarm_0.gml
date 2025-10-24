if (enemy_index < array_length(enemy_list)) {
    enemy_list[enemy_index].attack();
    enemy_index++;
    alarm[0] = 120;
} else {
	player_turn = true;
}