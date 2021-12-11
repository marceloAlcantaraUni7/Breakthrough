/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66EA390A
/// @DnDArgument : "var" "x - sprite_xoffset - spd"
/// @DnDArgument : "op" "2"
if(x - sprite_xoffset - spd > 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3DCE9280
	/// @DnDParent : 66EA390A
	/// @DnDArgument : "x" "-spd"
	/// @DnDArgument : "x_relative" "1"
	x += -spd;
}