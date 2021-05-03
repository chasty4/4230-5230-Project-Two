//  horizontal movement
if (keyboard_check(ord("D"))) {
	x += move_spd
	image_xscale = 1
	image_speed = 1
}

if (keyboard_check(ord("A"))) {
	x -= move_spd
	image_xscale = -1
	image_speed = 1
}

// vertical movement
if (keyboard_check(ord("W"))){
	if (instance_place(x,y+1,obj_block)) {
		audio_play_sound(snd_jump, 8, false)
		vspeed = jump_height
	} 
} 

if (!keyboard_check(ord("A")) and !keyboard_check(ord("D"))) {
	image_speed = 0
	image_index = 0
}


if keyboard_check_pressed(ord("O"))
{
	instance_create_layer(x, y, "Instances", obj_sword)
}

if hp <= 0 {
	instance_destroy()	
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