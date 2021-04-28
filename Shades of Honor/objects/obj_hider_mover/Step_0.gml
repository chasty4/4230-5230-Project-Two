if (instance_exists(obj_player)) {
	if (instance_place(x,y-1, obj_player)){
		obj_player.speed = speed	
	} else {
		obj_player.hspeed = 0	
	}
}