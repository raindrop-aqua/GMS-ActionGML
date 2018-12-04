switch (state) {
	case GAME_STATE.INIT:
		state = GAME_STATE.MAIN;
		break;
	case GAME_STATE.MAIN:
		if (obj_goal.stage_clear) {
			state = GAME_STATE.STAGE_CLEAR;
		} else if (instance_exists(obj_player) == false) {
			state = GAME_STATE.GAME_OVER;
		}
		break;
	case GAME_STATE.STAGE_CLEAR:
		if (keyboard_check_pressed(vk_space)) {
			if (room_next(room) != -1) {
				room_goto(room_next(room));
			} else {
				room_goto(rm_ending);
			}
		}
		break;
	case GAME_STATE.GAME_OVER:
		if (keyboard_check_pressed(vk_space)) {
			room_restart();
		}
		break;
}
