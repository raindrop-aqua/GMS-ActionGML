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

	var px = room_width / 2;
	var py = room_height / 2;
	draw_text(px, py, text);

	draw_set_halign(fa_left);
}
