// Player attacks enemy
obj_battle_enemy.data.hp -= damage_to_enemy;

if (check_for_end()) {
    alarm[2] = 60; // switch back to dungeon
} else {
    alarm[1] = 60; // enemy turn
    obj_battle_enemy.alarm[0] = 30; // enemy attack animation
}

obj_battle_player.data.charge = clamp(obj_battle_player.data.charge + 0.4, 0, 1);

audio_play_sound(snd_player_hit, 10, false);