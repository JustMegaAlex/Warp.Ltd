
//function Entity(obj, x, y) constructor {
//	self.object = obj
//	self.x = x,
//	self.y = y

//	function spawn(x, y) {
//		instance_copy()
//	}
//}

visible = false

// collect entities
instances = []
with oEntity {
	if place_meeting(x, y, other) {
		array_push(other.instances, id)
	}
}

warp_area = instance_place(x, y, oWarpArea)

// collect tiles
var lay_id = layer_get_id("Tiles")
tile_id = layer_tilemap_get_id(lay_id)
var xst = x / global.tile_size, yst = y / global.tile_size
width = sprite_width / global.tile_size
height = sprite_height / global.tile_size
tiles = []
for (var i = 0; i < width; ++i) {
	var column = []
    for (var j = 0; j < height; ++j) {
	    var tiledata = tilemap_get(tile_id, i + xst, j + yst)
		array_push(column, tiledata)
	}
	array_push(tiles, column)
}

function Spawn(xx, yy) {
	var ship = instance_create_layer(
		xx, yy, "Instances", oShipManager,
		{width: width, height: height})
	// spawn entities
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
	ship.warp_area = warp_area
	ship.DrawTiles(tiles)
}
