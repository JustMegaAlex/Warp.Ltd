
description = ""
is_interactible = false
interaction_hint = ""
interaction_dist = 45
interaction_y_shift = 0

function DrawInteractionHighlight() {
	draw_sprite(sInteract, global.frame, x, y + interaction_y_shift)
}
