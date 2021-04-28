if instance_exists(obj_player){
	if (!obj_player.isHiding and distance_to_object(obj_player) < viewRange) {
		canSeePlayer = true
		move_towards_point(obj_player.x, y, speed)
		alarm[0] = 10*room_speed
	} else {
		canSeePlayer = false	
		dir = sign(spd)
	}
}