if (instance_exists(obj_battle_switcher)) exit;
    
if (instance_exists(obj_dialog)) exit;
    
var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher);

_switcher.player_data = self;


for (var i = 0; i < instance_number(obj_enemy_parent); i++) {
    
}
for (var i = 0; i < global.num_battle_enemies; i++) {
    
}

_switcher.enemy_data = other;
_switcher.original_room = room;

room_goto(rm_battle);