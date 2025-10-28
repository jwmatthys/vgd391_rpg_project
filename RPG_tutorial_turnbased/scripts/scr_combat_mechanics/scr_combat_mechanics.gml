function dnd_combat(enemy_ac, damage_die_array) {
    var _attack_roll = irandom_range(1, 20); // assuming a d20 die
    if (_attack_roll < enemy_ac) { // miss!
        return 0;
    } else if (_attack_roll == 20) { // crit!
        return dnd_roll_damage(damage_die_array) + dnd_roll_damage(damage_die_array);
    } else {
        return dnd_roll_damage(damage_die_array);
    }
}

function dnd_roll_damage(damage_die_array) {
    var _damage = 0;
    for (var i = 0; i < array_length(damage_die_array); i++) {
        _damage += irandom_range(1, damage_die_array[i]);
    }
    return _damage;
}
