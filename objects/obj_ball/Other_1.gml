/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41183176
/// @DnDArgument : "var" " bbox_left"
/// @DnDArgument : "op" "1"
if( bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1654BF89
	/// @DnDParent : 41183176
	/// @DnDArgument : "speed" " -hspeed"
	/// @DnDArgument : "type" "1"
	hspeed =  -hspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46BC7638
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 189042C7
	/// @DnDParent : 46BC7638
	/// @DnDArgument : "speed" " -hspeed"
	/// @DnDArgument : "type" "1"
	hspeed =  -hspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41B165FB
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
if(bbox_top < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52DA2774
	/// @DnDParent : 41B165FB
	/// @DnDArgument : "speed" " -vspeed"
	/// @DnDArgument : "type" "2"
	vspeed =  -vspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75A9BB36
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2FB2C475
	/// @DnDParent : 75A9BB36
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 42F824DF
	/// @DnDParent : 75A9BB36
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A9C76ED
	/// @DnDParent : 75A9BB36
	/// @DnDArgument : "var" " global.player_lives"
	/// @DnDArgument : "op" "3"
	if( global.player_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DEF12F2
		/// @DnDParent : 3A9C76ED
		/// @DnDArgument : "var" " global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" " global.high_score"
		if( global.player_score >  global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5FDEFF38
			/// @DnDParent : 6DEF12F2
			/// @DnDArgument : "expr" " global.player_score"
			/// @DnDArgument : "var" " global.high_score"
			 global.high_score =  global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2B4566DC
	/// @DnDParent : 75A9BB36
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 04338442
		/// @DnDParent : 2B4566DC
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "obj_ball"
		/// @DnDSaveInfo : "objectid" "obj_ball"
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 496397F8
		/// @DnDApplyTo : {obj_bat}
		/// @DnDParent : 2B4566DC
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "x"
		with(obj_bat) {
		x = xstart;
		
		}
	}
}