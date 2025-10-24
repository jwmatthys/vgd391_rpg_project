if (irandom(2)) {
    self.y -= sprite_height / 2;
    other.y += sprite_height / 2;
} else {
	self.x -= sprite_width / 2;
    other.x += sprite_width / 2;
}
