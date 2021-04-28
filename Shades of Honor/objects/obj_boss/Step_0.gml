if (!instance_place(x,y+1,obj_block)) {
	gravity = 1
} else {
	gravity = 0	
}

if (hp <= 0) {
	instance_destroy(self)
}