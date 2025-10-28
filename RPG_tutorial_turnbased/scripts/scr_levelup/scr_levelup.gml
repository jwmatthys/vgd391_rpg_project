function levelup(player) {
    player.level++;
    player.xp_require *= 1.4;

    switch(player.level) {
        case 2:
            player.hit_die = [6];
            player.ac = 7;
            break;
        case 3:
            player.hit_die = [4,4];
            player.hp = 102;
            break;
        default:
            show_debug_message("Error in levelup function");
    }
    create_dialog([
    {
        name: "Congrats",
        msg: $"You leveled up! Your new stats are:\nLVL: {player.level}\nHP: {player.hp_total}\nAC: {player.ac}\n"
    }
    ]);
}