/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1D554348
/// @DnDArgument : "function" " move_bounce_all"
/// @DnDArgument : "arg" "true"
 move_bounce_all(true);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4484D0C1
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 69E05FD0
/// @DnDArgument : "value" "5"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.player_score"
global.player_score += 5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 299C496D
/// @DnDArgument : "speed" "0.1"
/// @DnDArgument : "speed_relative" "1"
speed += 0.1;