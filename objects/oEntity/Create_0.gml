
description = ""
is_interactible = false
interaction_dist = 70
interaction_y_shift = 0
interaction_image_speed = 0.25
interaction_sprite = sInteract

function DrawInteractionHighlight() {
	draw_sprite(interaction_sprite, global.frame * interaction_image_speed, 
				x, y + interaction_y_shift)
	draw_set_halign(fa_center)
	draw_text(x, y + interaction_y_shift - sprite_get_height(interaction_sprite) - 4, interaction_hint)
}

function Interact() {}
