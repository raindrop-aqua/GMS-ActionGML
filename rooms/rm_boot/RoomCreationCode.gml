scr_consts();

if (global.DEBUG) {
	instance_create_layer(0, 0, "Instances", obj_debug_manager);
}

room_goto(global.ROOM_START);
