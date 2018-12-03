switch (dir) {
	case PLAYER_DIR.RIGHT:
		draw_sprite(spr_player, sub_image, x, y);
		break;
	case PLAYER_DIR.LEFT:
		draw_sprite_ext(spr_player, sub_image, x, y, -1, 1, 0, c_white, 1);
		break;
}
