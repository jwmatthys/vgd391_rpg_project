draw_shadow(1);
draw_self();

if (instance_exists(obj_dialog)) exit;

if (can_talk) {
    draw_sprite(spr_talk, 0, x, y - 16);    
}

