function get_nearby_enemies(player, n, d) { 
    var enemy_list = array_create(0); 
    var enemy_count = instance_number(obj_enemy_parent); 

    // Collect enemies within distance d 
    for (var i = 0; i < enemy_count; i++) { 
        var enemy = instance_find(obj_enemy_parent, i); 
        var dist = point_distance(player.x, player.y, enemy.x, enemy.y); 
        if (dist <= d) { 
            array_push(enemy_list, [dist, enemy]); 
        } 
    } 

    // Sort by distance 
    array_sort(enemy_list, function(a, b) { 
        return a[0] - b[0]; 
    }); 

    // Extract up to n closest enemies 
    var result = array_create(0); 
    for (var j = 0; j < n; j++) { 
        if (j < array_length(enemy_list)) { 
            array_push(result, enemy_list[j][1]); 
        } 
    } 
    return result; 
}
