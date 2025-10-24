if (room != rm_multibattle) {
    if (array_length(defeated_enemies ) > 0) {
        for (var i = 0; i < array_length(defeated_enemies); i++) {
            var _id = defeated_enemies[i];
            if (instance_exists(_id)) {
                instance_destroy(_id);
            }
        }
        obj_player.add_xp(accumulated_xp);
    }
    alarm[0] = 5; 
}