player_turn = true;

// x and y coordinates for the enemies to be placed.
enemy_positions = [
    [189, 104],
    [242, 89],
    [283, 105]
]

enemy_list = array_create(0);
enemy_index = 0;

if (object_exists(obj_multibattle_switcher)) {
    for (var i = 0; i < array_length(obj_multibattle_switcher.battle_enemies); i++) {
        var data = obj_multibattle_switcher.battle_enemies[i];
        var _x = enemy_positions[i][0];
        var _y = enemy_positions[i][1];
        var new_enemy = instance_create_layer(_x, _y, "Instances", obj_multibattle_enemy);
        new_enemy.hp = data.hp;
        new_enemy.hp_total = data.hp_total;
        new_enemy.ac = data.ac;
        new_enemy.hit_die = data.hit_die;
        new_enemy.xp_value = data.xp_value;
        new_enemy.sprite_index = data.sprite;
        new_enemy.dungeon_id = data.id;
    }    
}

enemies_turn = function() {
    player_turn = false;
    enemy_list = array_create(0);
    enemy_index = 0;
    with (obj_multibattle_enemy) {
        array_push(obj_multibattle_manager.enemy_list, id);
    }
    alarm[0] = 2 * room_speed;
}