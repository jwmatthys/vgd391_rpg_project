if (instance_exists(obj_multibattle_switcher)) exit;
    
var _switcher = instance_create_depth(0, 0, 0, obj_multibattle_switcher);

_switcher.player_data = self;
_switcher.original_room = room;
_switcher.battle_enemies = [];
_switcher.defeated_enemies = [];
var _nearby = get_nearby_enemies(self, 3, 50);
for (var i = 0; i < array_length(_nearby); i++) {
    var _enemy = _nearby[i];
    var _enemy_data = {
        id: _enemy.id,
        hp: _enemy.hp,
        hp_total: _enemy.hp_total,
        ac: _enemy.ac,
        hit_die: _enemy.hit_die,
        xp_value: _enemy.xp_value,
        sprite: _enemy.sprite_index
    };
    array_push(_switcher.battle_enemies, _enemy_data);
}

room_goto(rm_multibattle);