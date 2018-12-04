// 壁はねかえり判定
if (place_free(x + hspeed, y) == false) {
	hspeed = -hspeed;
}

// 上に乗っているplayerを床と一緒に動かす

// プレイヤーが存在しないときは抜ける
if (instance_exists(obj_player) == false) {
	exit;
}

// 接地していないので抜ける
if (obj_player.vspeed != 0) {
	exit;
}

// 床の上にplayerが乗っていないときは抜ける
if (place_meeting(x, y - 1, obj_player) == false) {
	exit;
}

with (obj_player) {
	if (place_free(x + other.hspeed, y)) {
		x += other.hspeed;
	}
}
