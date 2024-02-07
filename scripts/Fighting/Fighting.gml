
function create_hitbox() {
	var inst = instance_create_layer(x, y, "Instances", oHitBox)
	inst.target = id
	inst.side = side
	return inst
}
