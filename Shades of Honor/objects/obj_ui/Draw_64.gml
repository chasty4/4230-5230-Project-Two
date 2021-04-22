/// @description Insert description here
// You can write your code in this editor
/*
draw_text(20,20,obj_player.x)
draw_text(20,40,obj_player.y)
draw_text(20,60,abs(obj_player.sprite_width/2))
draw_text(20,80, obj_player.shdr)
*/

if instance_exists(obj_player) {
	draw_healthbar(16, 16, 144, 32, obj_player.hp, c_black, c_red, c_lime, 0, true, true)	
}