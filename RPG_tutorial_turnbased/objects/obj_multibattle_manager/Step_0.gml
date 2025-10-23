if (instance_number(obj_multibattle_enemy) <= 0) {
    if (object_exists(obj_multibattle_switcher)) {
        // TODO: add SFX and a delay
        room_goto(obj_multibattle_switcher.original_room);
    }
}