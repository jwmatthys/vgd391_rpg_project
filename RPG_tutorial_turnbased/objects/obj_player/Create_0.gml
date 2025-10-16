move_speed = 1;
tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 10;
hp_total = hp;
damage = 1;
charge = 0;
level = 1;
xp = 0;
xp_require = 100;

if (instance_exists(obj_room_switcher)) {
    data = obj_room_switcher.player_data;
    hp = data.hp;
    hp_total = data.hp_total;
    damage = data.damage;
    charge = data.charge;
    level = data.level;
    xp = data.xp;
    xp_require = data.xp_require;
}

walking = false;

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
