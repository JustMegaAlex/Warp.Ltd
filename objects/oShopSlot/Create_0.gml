
event_inherited()

cost = 5

is_interactible = true
interaction_hint = string(cost)
interaction_y_shift = -20
interaction_sprite = sCoin

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
	}
}
