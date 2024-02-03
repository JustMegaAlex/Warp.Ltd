
event_inherited()

is_interactible = true
interaction_y_shift = -16

function Interact() {
	oDialog.Show(x, y + interaction_y_shift, dialog_text)
}
