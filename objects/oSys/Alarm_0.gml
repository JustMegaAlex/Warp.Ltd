
var ratio = display_get_width() / vieww

camera_set_view_size(view_camera[0], vieww, display_get_height() / ratio)
display_set_gui_size(vieww, display_get_height() / ratio)


function ConsoleSpawnShip(params) {
	var num = int64(params[0])
	instance_find(oShipBuilder, num).Spawn(1000*oShipSpawner.total_spawns, -1000)
}

console_add_command({
	name: "spawn",
	short: "spawn",
	desc: "Spawn a ship",
	args: ["number"],
	args_req: [true],
	args_desc: [""],
	callback: ConsoleSpawnShip
})

__EzConsole__.console_width = vieww
__EzConsole__.console_height = display_get_height() / ratio - 40
