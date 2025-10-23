data = obj_multibattle_switcher.player_data;

inflict_damage = function(amount) {
    data.hp -= amount;
    if (data.hp <= 0) {
        // TODO: add a delay and an animation here
        game_restart();
    }
}

function player_attack (target, damage) {
    if (instance_exists(target)) {
        // TODO: add SFX and animation
        target.selected = false;
        target.scale = 1;
        target.inflict_damage(damage);
    }
}