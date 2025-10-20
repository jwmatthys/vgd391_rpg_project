move_speed = 1;
tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 10;
hp_total = hp;
damage = 1;
charge = 0;
level = 1;
xp = 0;
xp_require = 100;

walking = false;

if (instance_exists(obj_room_switcher))
{
    hp = obj_room_switcher.player_data.hp;
    hp_total = obj_room_switcher.player_data.hp_total;
    damage = obj_room_switcher.player_data.damage;
    charge = obj_room_switcher.player_data.charge;
    level = obj_room_switcher.player_data.level;
    xp = obj_room_switcher.player_data.xp;
    xp_require = obj_room_switcher.player_data.xp_require;
    instance_destroy(obj_room_switcher);
}

function add_xp(_xp_to_add) {
    xp += _xp_to_add;
    if (xp >= xp_require) { // level up
        level++;
        xp -= xp_require;
        xp_require *= 1.4;
        
        hp_total += 5;
        hp = hp_total;
        damage += 0.8;
        
        create_dialog([
    {
        name: "Congrats",
        msg: $"You leveled up! Your new stats are:\nLVL: {level}\nHP: {hp_total}\nDMG: {damage}"
    }
        ])
    }
}