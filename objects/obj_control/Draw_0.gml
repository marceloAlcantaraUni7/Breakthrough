/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 535F8BE8
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0AA708EB
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 62472D15
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 45C0D95B
/// @DnDArgument : "x" "room_width-8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""highscore: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width-8, 8, string("highscore: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 472680F2
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 24D03778
/// @DnDArgument : "x" "(room_width/2)-((global.player_lives-1)*32)"
/// @DnDArgument : "y" "room_height-32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
var l24D03778_0 = sprite_get_width(spr_lives);
var l24D03778_1 = 0;
for(var l24D03778_2 = global.player_lives; l24D03778_2 > 0; --l24D03778_2) {
	draw_sprite(spr_lives, 0, (room_width/2)-((global.player_lives-1)*32) + l24D03778_1, room_height-32);
	l24D03778_1 += l24D03778_0;
}