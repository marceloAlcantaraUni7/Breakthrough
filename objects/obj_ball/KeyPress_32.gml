/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21906534
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 38E72919
	/// @DnDParent : 21906534
	/// @DnDArgument : "direction" "135,90,45"
	direction = choose(135,90,45);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5BDDB265
	/// @DnDParent : 21906534
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35285CF1
	/// @DnDParent : 21906534
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;
}