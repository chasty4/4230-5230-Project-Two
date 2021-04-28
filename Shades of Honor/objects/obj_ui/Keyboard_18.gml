if keyboard_check_pressed(ord("H"))
{
	obj_player.hp = 100
}
if keyboard_check_pressed(ord("N"))
{
	room_goto_next()
}
if (keyboard_check_pressed(ord("L"))){
	if !obj_player.invinsible{
		obj_player.invinsible = true
	} else {
		obj_player.invinsible = false

	}
}
