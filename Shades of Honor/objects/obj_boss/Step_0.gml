
if (!instance_place(x,y+1,obj_block)) {
	gravity = 1
} else {
	gravity = 0	
}


if (hp <= 0) {
	instance_destroy(self)
}

if instance_exists(obj_player){
	if (x > obj_player.x){
		image_xscale = -1
	} else {
		image_xscale = 1	
	}
}


if !attacking {
	alarm[4] = room_speed * 3
	attacking = true
}

/*
if keyboard_check_pressed(vk_left){
	attacks = 1	
}

if keyboard_check_pressed(vk_down){
	attacks = 0	
}

if keyboard_check_pressed(vk_right){
	attacks = 2	
}
*/

if instance_exists(obj_player) and attacks != 0{
	if num_tele = 4 {
		attacks = 0
		visible = true
		num_tele = 0
		alarm[0] = -1
		alarm[1] = -1
		teleport = true
		shoot = false
		
		attacking = false
	}
		
	if attacks = 1  and teleport = true{
		num_tele += 1
		shoot = true
		visible = false
		if num_tele <= 3 {
			instance_create_layer(x,y,"Smoke", obj_smoke)
		
			x = instance_nearest(obj_player.x, obj_player.y, obj_boss_teleport).x
			y = instance_nearest(obj_player.x, obj_player.y, obj_boss_teleport).y
		}
		teleport = false
		alarm[0] = room_speed * 4
		
		
	}
	if shoot and visible {
		shoot = false
		instance_create_layer(x,y,"Instances", obj_star)
		alarm[1] = room_speed / 1.5
		
		}
	
	
	
	
	if attacks = 2 {
		
		if vis {
			vis = false
			visible = false
			alarm[3] = 90
			alarm[2] = 100
		}
		if smoke {
			smoke = false
			instance_create_layer(x,y,"Smoke", obj_smoke)
		}
		
		/*
		y = obj_player.y - 20
		x = obj_player.x - (obj_player.image_xscale * 48)
		//instance_create_layer(x,y,"Instances", obj_boss_sword)
		
		*/
		//attacks = 0
		
	}
	
}
