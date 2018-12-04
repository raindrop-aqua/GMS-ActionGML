/// 接地処理

// 上昇中は着地できない
if (other.vspeed < 0) {
	exit;
}

// プレイヤーの足元座標を求める
var ty = other.bbox_bottom;
// 接地座標と足元座標の差を求める
var dy = ty - y;
// 離れすぎている場合は着地できない
if (dy > 16) {
	exit;
}

// コリジョンマスクの高さ
var sy = other.bbox_bottom - other.bbox_top;
// 床にぴったり乗れる座標を求める
var py = y - sy;

with (other) {
	// 接地面にくっつける
	y = py;
	// 重力無効化	
	vspeed = 0;
	gravity = 0;
}
