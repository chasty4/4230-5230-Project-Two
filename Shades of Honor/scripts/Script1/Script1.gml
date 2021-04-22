// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hurtPlayer(dmg){
	if instance_exists(obj_player)
	{
		obj_player.hp -= dmg
	}
}