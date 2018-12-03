hspeed = 0
if (keyboard_key == vk_left) {
	if (place_free(x - global.PLAYER_HSPEED, y)) {	
		hspeed = -global.PLAYER_HSPEED;
	} else {
		move_contact_solid(180, global.PLAYER_HSPEED);
	}
} else if (keyboard_key == vk_right) {
	if (place_free(x + global.PLAYER_HSPEED, y)) {	
		hspeed = global.PLAYER_HSPEED;
	} else {
		move_contact_solid(0, global.PLAYER_HSPEED);
	}
}

if (keyboard_key == vk_space) {
	if (place_free(x, y + 1) == false) {
		vspeed = -global.PLAYER_VSPEED;
		gravity = global.PLAYER_GRAVITY;
	}
}

if (place_free(x, y + 1)) {
	gravity = global.PLAYER_GRAVITY;
} else {
	gravity = 0;
}