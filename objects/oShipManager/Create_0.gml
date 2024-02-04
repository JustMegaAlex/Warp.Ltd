
visible = false

global.ships_spawned++

warp_area = noone
warp_key = "ship" + string(global.ships_spawned)
warp_timer = 3600

entities = []
tilemap = layer_tilemap_create("Tiles", x, y, tsAll, width, height)
function AddInstance(inst) {
	array_push(entities, inst)
	switch inst.object_index {
		case oWarpArea:
			warp_area = inst
			break
	}
}

function DrawTiles(tiles) {
	for (var i = 0; i < width; ++i) {
	    for (var j = 0; j < height; ++j) {
		    var tiledata = tiles[i][j]
			tilemap_set(tilemap, tiledata, i, j)
		}
	}
}

alarm[1] = 10

array_push(global.assignments, id)
