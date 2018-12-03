/// @description キャラクタの移動
// 横方向のスピードを初期化
hspeed = 0
// プレイヤーの移動
if (keyboard_check(vk_left)) {
	dir = PLAYER_DIR.LEFT;
	
	if (place_free(x - global.PLAYER_HSPEED, y)) {	
		hspeed = -global.PLAYER_HSPEED;
	} else {
		move_contact_solid(180, global.PLAYER_HSPEED);
	}
} else if (keyboard_check(vk_right)) {
	dir = PLAYER_DIR.RIGHT;

	if (place_free(x + global.PLAYER_HSPEED, y)) {	
		hspeed = global.PLAYER_HSPEED;
	} else {
		move_contact_solid(0, global.PLAYER_HSPEED);
	}
}

// ジャンプ
if (keyboard_check_pressed(vk_space)) {
	if (place_free(x, y + 1) == false) {
		vspeed = -global.PLAYER_VSPEED;
		gravity = global.PLAYER_GRAVITY;
	}
}

// 重力判定
if (place_free(x, y + 1)) {
	gravity = global.PLAYER_GRAVITY;
} else {
	gravity = 0;
}

// 状態の判定
if (hspeed == 0 and vspeed == 0) {
	state = PLAYER_STATE.STAND;
} else if (hspeed != 0 and vspeed == 0) {
	state = PLAYER_STATE.RUN;
} else if (vspeed != 0) {
	state = PLAYER_STATE.JUMP;
}

// アニメーションタイマー更新
timer_animation++;

// 状態に対応する画像番号を取得
switch (state) {
	case PLAYER_STATE.STAND:
		sub_image = 0;
		// まれにまばたきをする
		if (timer_animation % 120 > 110) {
			sub_image = 1;
		}
		break;
	case PLAYER_STATE.RUN:
		sub_image = 2;
		// 走りと立ちを交互に繰り返す
		if (timer_animation % 12 < 6) {
			sub_image = 3;
		}
		break;
	case PLAYER_STATE.JUMP:
		sub_image = 2;
		break;
	case PLAYER_STATE.DAMAGE:
		sub_image = 5;
		// 交互に繰り返す
		if (timer_animation % 4 < 2) {
			sub_image = 6;
		}
		break;
}






