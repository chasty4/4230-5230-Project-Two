/// @description Insert description here
// You can write your code in this editor

if (!instance_place(x,y+1,obj_block)) {
	gravity = 1
} else {
	gravity = 0	
}

if instance_exists(obj_player){
	if (!obj_player.isHiding and distance_to_object(obj_player) < viewRange) {
		canSeePlayer = true
		hspeed = 0
		if obj_player.x > x{
			image_xscale = 1
			direc = 1
		} else {
			image_xscale = -1
			direc = -1
		}
		move_towards_point(obj_player.x, y, chaseSpd)	
	} else {
		canSeePlayer = false	
		hspeed = hsp
		direc = sign(hsp)
	}
}

image_xscale = sign(direc)
	