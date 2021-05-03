// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_attack(){
	num = irandom_range(1,100)
	if num > 60 {
		return 1
	} else {
		return 2
	}
}