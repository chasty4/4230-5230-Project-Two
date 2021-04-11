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
if (keyboard_check(ord("W"))) and !at_elevator{
	if (instance_place(x,y+1,obj_barrier)) {
		vspeed = jump_height
	}
} 

x = clamp(x, 8, room_width-sprite_width/2)