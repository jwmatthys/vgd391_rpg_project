move_speed = 1;
tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 100;
hp_total = hp;
ac = 6;
hit_die = [4]; //1xd4
level = 1;
xp = 0;
xp_require = 100;

walking = false;

if (instance_exists(obj_room_switcher))
{
    hp = obj_room_switcher.player_data.hp;
    hp_total = obj_room_switcher.player_data.hp_total;
    ac = obj_room_switcher.ac;
    hit_die = obj_room_switcher.hit_die;
    charge = obj_room_switcher.player_data.charge;
    level = obj_room_switcher.player_data.level;
    xp = obj_room_switcher.player_data.xp;
    xp_require = obj_room_switcher.player_data.xp_require;
    instance_destroy(obj_room_switcher);
}

function add_xp(_xp_to_add) {
    xp += _xp_to_add;
    if (xp >= xp_require) { // level up
        xp -= xp_require;
        levelup(self);
    }
}