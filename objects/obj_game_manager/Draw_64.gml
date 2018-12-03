draw_text(50, 50, "GAME STATE:" + state);
if (instance_exists(obj_player)) {
	draw_text(50, 80, "PLAYER STATE:" + obj_player.state);
}

var text = "";

switch (state) {
	case GAME_STATE.INIT:
		text = "READY";
		break;
	case GAME_STATE.MAIN:
		break;
	case GAME_STATE.STAGE_CLEAR:
		text = "STAGE CLEAR";
		break;
	case GAME_STATE.GAME_OVER:
		text = "GAME OVER";
		break;
}

if (text != "") {
	draw_set_halign(fa_center);
	draw_text_transformed_color(
		room_width / 2, 100, text,
		5, 5, 0, c_yellow, c_yellow, c_red, c_red, 1
	);
	draw_set_halign(fa_left);
}
