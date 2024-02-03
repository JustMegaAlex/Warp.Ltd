
entities = []
tilemap = layer_tilemap_create("Tiles", x, y, tsAll, width, height)
function AddInstance(inst) {
	array_push(entities, inst)
}

function DrawTiles(tiles) {
	for (var i = 0; i < width; ++i) {
	    for (var j = 0; j < height; ++j) {
		    var tiledata = tiles[i][j]
			tilemap_set(tilemap, tiledata, i, j)
		}
	}
}