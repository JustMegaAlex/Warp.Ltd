
event_inherited()

is_interactible = true
interaction_y_shift = -16

function Interact() {
	if instance_exists(oWarpConsole) {
		oPlayer.SetInControl(true)
		instance_destroy(oWarpConsole)
	} else {
		oPlayer.SetInControl(false)
		instance_create_layer(0, 0, "UI", oWarpConsole)
	}
}
