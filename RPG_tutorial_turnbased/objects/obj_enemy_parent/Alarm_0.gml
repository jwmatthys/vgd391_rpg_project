// update pathfinding target
if (instance_exists(obj_player) and distance_to_object(obj_player) < distance_to_player)
{
    path_delete(path);
    path = path_add();
    
    target_x = obj_player.x;
    target_y = obj_player.y;
    
    mp_grid_path(obj_pathway.grid, path, x, y, target_x, target_y, true);
    path_start(path, move_speed, path_action_stop, true);
}
else {
    target_x = x;
    target_y = y;
}

alarm[0] = 60;