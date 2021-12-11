/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 6D707B61
/// @DnDArgument : "var" "brick_count"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "obj_brick"
var brick_count = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A406A37
/// @DnDArgument : "var" "brick_count"
if(brick_count == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7E28339A
	/// @DnDParent : 0A406A37
	room_restart();
}