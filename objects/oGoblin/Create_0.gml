
event_inherited()

is_interactible = true
interaction_y_shift = -16

image_speed = 0
image_index = irandom(image_number - 1)

function Interact() {
	oDialog.Show(x, y + interaction_y_shift, dialog_text)
}

