/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	if !obj_player.isHiding and damage_player and !obj_player.invinsible{
		hurtPlayer(5)
		damage_player = false
		alarm[0] = room_speed / 4
	}	
}

