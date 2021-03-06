global.ROOM_START = rm_title;
global.DEBUG = true;

global.PLAYER_HSPEED = 3;
global.PLAYER_VSPEED = 7;
global.PLAYER_GRAVITY = 0.3;

// プレイヤーの状態
enum PLAYER_STATE {
	STAND = 0,
	RUN = 1,
	JUMP = 2,
	DAMAGE = 3
}

// プレイヤーの向き
enum PLAYER_DIR {
	RIGHT = 0,
	LEFT = 1
}

// ゲームの状態
enum GAME_STATE {
	INIT = 0,
	MAIN = 1,
	STAGE_CLEAR = 2,
	GAME_OVER = 3
}
