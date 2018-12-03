///@description 垂直方向への移動を無効化する
if (vspeed < 0) {
	move_contact_solid(90, abs(vspeed));
	vspeed = 0;
} else {
	move_contact_solid(270, abs(vspeed));
	gravity = 0;
	vspeed = 0;
}
