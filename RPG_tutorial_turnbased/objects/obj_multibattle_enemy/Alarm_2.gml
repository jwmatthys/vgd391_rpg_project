// Enemy death
if (scale <= 0) {
    instance_destroy(self);
} else {
	scale -= 0.1;
    alarm[2] = 1;
}