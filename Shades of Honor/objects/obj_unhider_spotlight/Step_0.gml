if instance_exists(obj_player){
	if (distance_to_object(obj_player) < viewRange) {
		canSeePlayer = true
		other.isHiding = false
		move_towards_point(obj_player.x, y, speed)
		alarm[0] = 10*room_speed
	} else {
		canSeePlayer = false	
		dir = sign(spd)
	}
}