if (distance_to_object(obj_player) < max_distance_to_player) {
    instance_create_depth(x,y,0,choose_random_from_array(array_of_enemies));
    enemies_spawned++;
}
if (enemies_spawned < max_spawned or max_spawned < 0) {
    alarm[0] = _spawn_rate_frames;
}