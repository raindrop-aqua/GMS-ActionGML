/// @desc プレイヤーが接触した
with (other) {
	effect_create_above(ef_firework, x, y, 2, c_fuchsia);
	instance_destroy();
}
