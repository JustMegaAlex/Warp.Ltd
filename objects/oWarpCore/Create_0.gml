
event_inherited()

is_interactible = true
interaction_y_shift = -16

cooldown_time = 300
cooldown_timer = 0

function Interact() {
	if instance_exists(oWarpConsole) {
		oPlayer.SetInControl(true)
		instance_destroy(oWarpConsole)
	} else {
		oPlayer.SetInControl(false)
		instance_create_layer(0, 0, "UI", oWarpConsole)
	}
}

function Cooldown() {
	cooldown_timer = cooldown_time
}
