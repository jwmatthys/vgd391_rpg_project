// player death animation
if (scale <= 0) {
    game_restart();
}
else {
    scale -= 0.01;
    alarm[1] = 1;
}
