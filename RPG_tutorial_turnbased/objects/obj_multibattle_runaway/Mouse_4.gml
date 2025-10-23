if (obj_multibattle_manager.player_turn) {
    if (object_exists(obj_multibattle_switcher)) {
        room_goto(obj_multibattle_switcher.original_room);
    }
}