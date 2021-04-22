/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
	if	(distance_to_object(obj_player) < viewRange and !obj_player.isHiding){
		if canShoot {
				canShoot = false
				instance_create_layer(x,y, "Instances", obj_star)
				alarm[0] = room_speed * 2
		}
	} else {
		canShoot = true
		alarm[0] = -1
	}
}