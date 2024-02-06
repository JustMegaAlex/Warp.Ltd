
event_inherited()

is_interactible = true
interaction_y_shift = -16
interaction_hint = "Brak"

image_speed = 0
image_index = 5

first_talked = false
index = 0

lines = [
	"You're late!",
	"Your daily briefing is now must be over!",
	"Get yourself together!",
	"Listen attentively and remember what'll help you to survive this day!",
	"First, press LMB to shoot",
	"How the heck I know what's LMB is??",
	"It's in our survival manual and my duty is to read it to you, got it?",
	"Second, press E to open warp console near the warp core",
	"Third, as you decided which ship to secure press SPACE to warp",
	"Fourth, very important! Long press SPACE to warp back here!",
	"I won't travel across the whole galaxy to rescue your mass!",
	"If you're out of ammo it will restore automatically",
	"If you have ammo clips you can fast reload by pressing R",
	"If you got hit patch yourself up by pressing F",
	"It will work only if you have heal injections!",
	"Your briefing is over.",
	"Don't be late next time and take care!!!"
]

lines_repeat = [
	"What, wanna me repeat the briefing?",
	"At your survice!!",
	"Press LMB to shoot!",
	"Press E to open the console!",
	"Press SPACE to warp in and out!",
	"Press R to reload your gun!",
	"And press F heal!",
	"Warp.inc wishes you luck!",
]

function Interact() {
	var _lines = first_talked ? lines_repeat : lines
	var txt = _lines[index]
	oDialog.Show(x, y + interaction_y_shift, txt, 10 * 60)
	index++
	if index >= array_length(_lines) {
		first_talked = true
		index = 0
	}
}
