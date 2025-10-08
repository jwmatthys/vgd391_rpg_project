if (instance_exists(obj_dialog)) exit;

if (hp <= 0) {
    instance_destroy();
    
    obj_player.add_xp(xp_value);
}