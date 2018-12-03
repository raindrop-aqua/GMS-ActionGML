/// @desc プレイヤーがゴールに接触した
with (other) {
	effect_create_above(ef_ring, x, y, 1, c_fuchsia);
	instance_destroy();
}

stage_clear = true;