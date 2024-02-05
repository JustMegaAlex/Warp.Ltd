
description = ""
is_interactible = false
interaction_hint = ""
interaction_dist = 70
interaction_y_shift = 0
interaction_image_speed = 0.25
interaction_sprite = sInteract

function DrawInteractionHighlight() {
	draw_sprite(interaction_sprite, global.frame * interaction_image_speed, 
				x, y + interaction_y_shift)
}

function Interact() {}
