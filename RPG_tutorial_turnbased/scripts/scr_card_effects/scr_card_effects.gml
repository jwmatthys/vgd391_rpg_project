/// Deal simple damage to a target
function deal_damage(target, amount) {
    target.hp -= amount;
    show_debug_message(target.name + " takes " + string(amount) + " damage!");
}

/// Deal double damage to a target
function double_damage(target, amount) {
    target.hp -= amount * 2;
    show_debug_message(target.name + " takes " + string(amount*2) + " damage!");
}

/// Heal a target
function heal(target, amount) {
    target.hp += amount;
    show_debug_message(target.name + " heals " + string(amount) + " HP!");
}