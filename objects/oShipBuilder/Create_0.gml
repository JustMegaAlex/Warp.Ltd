
//function Entity(obj, x, y) constructor {
//	self.object = obj
//	self.x = x,
//	self.y = y

//	function spawn(x, y) {
//		instance_copy()
//	}
//}

visible = false

instances = []
with oEntity {
	if place_meeting(x, y, other) {
		array_push(other.instances, id)
	}
}

function Spawn(xx, yy) {
	var ship = instance_create_layer(xx, yy, "Instances", oShipManager)
	for (var i = 0; i < array_length(instances); ++i) {
		with instances[i] {
			var inst = instance_copy(false)
			// move relatively to (0, 0)
			inst.x += xx - other.x
			inst.y += yy - other.y
			inst.ship = ship
			ship.AddInstance(inst)
		}
	}
}
