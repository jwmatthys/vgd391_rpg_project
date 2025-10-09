random_enemy = irandom(_array_length - 1);
instance_create_depth(x, y, 0, array_of_enemies[random_enemy]);
enemies_spawned++;
if (enemies_spawned < max_spawned and max_spawned > 0) {
    alarm[0] = _spawn_rate_frames;
}
