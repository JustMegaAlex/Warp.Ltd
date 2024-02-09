
event_inherited()

cost = 5

is_interactible = true
interaction_y_shift = -50

draw_cost_y_shift = interaction_y_shift
draw_cost_wave_sp = 4
draw_item_wave_sp = 1
draw_cost_wave_magn = 5
draw_item_wave_magn = 3
draw_text_x_shift = sprite_get_width(sCoin) * 0.7

restore_time = 3 * 60
restore_timer = 0

enum Items {
	clip,
	hp
}

item = irandom(Items.hp)
data = ds_map_create()

data[? 0] = {spr: sUIPlazmaClip}
data[? 1] = {spr: sUIStipPack}

function Interact() {
	if oPlayer.coins >= cost and item > -1 {
        oPlayer.coins -= cost
		switch item {
			case Items.clip:
                oPlayer.plazma_clips++
                break
			case Items.hp:
                oPlayer.stimpacks++
                break
		}
        item = -1
        restore_timer = restore_time
		audio_play_sound(sfxGetItem, 3, false)
	}
}
