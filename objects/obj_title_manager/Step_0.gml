// ゲーム開始チェック
if (instance_exists(obj_player) == false) {
	room_goto(rm_001);
}