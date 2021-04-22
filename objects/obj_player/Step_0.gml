//  horizontal movement
if (keyboard_check(ord("D"))) {
	x += move_spd
	image_xscale = 1
}

if (keyboard_check(ord("A"))) {
	x -= move_spd
	image_xscale = -1
}

// vertical movement
if (keyboard_check(ord("W"))){
	if (instance_place(x,y+1,obj_block)) {
		vspeed = jump_height
	}
} 



x = clamp(x, abs(sprite_width/2), room_width-sprite_width/2)

if (!instance_place(x,y+1, obj_block)){
	gravity = 1	
} else {
	gravity = 0	
}

if (place_meeting(x,y,obj_hider)) {
	canHide = true
}
if (!place_meeting(x,y,obj_hider)){
	canHide = false
	shdr = sdr_default
}