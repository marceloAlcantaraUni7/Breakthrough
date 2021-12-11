/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D9D0195
/// @DnDArgument : "var" " global.player_lives"
/// @DnDArgument : "op" "3"
if( global.player_lives <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C07600F
	/// @DnDInput : 2
	/// @DnDParent : 6D9D0195
	/// @DnDArgument : "expr_1" "3"
	/// @DnDArgument : "var" "player_score"
	/// @DnDArgument : "var_1" "player_lives"
	player_score = 0;
	player_lives = 3;

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5BD22DCD
	/// @DnDParent : 6D9D0195
	room_restart();
}