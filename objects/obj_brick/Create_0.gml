/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 7A265AFB
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 3333C707
/// @DnDInput : 4
/// @DnDArgument : "var" "selected_color"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "c_aqua"
/// @DnDArgument : "option_1" "c_black"
/// @DnDArgument : "option_2" "c_lime"
/// @DnDArgument : "option_3" "c_olive"
var selected_color = choose(c_aqua, c_black, c_lime, c_olive);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 6E8C6B6E
/// @DnDArgument : "value" "selected_color"
/// @DnDArgument : "instvar" "14"
image_blend = selected_color;