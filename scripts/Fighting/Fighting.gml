
function create_hitbox(side) {
	var inst = instance_create_layer(x, y, "Instances", oHitBox)
	inst.target = id
	inst.side = side
	return inst
}
