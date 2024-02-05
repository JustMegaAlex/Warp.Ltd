
cost = 5

is_interactible = true
interaction_hint = string(cost)

restore_time = 3 * 60
restore_timer = 0

enum Items {
	clip,
	hp
}

item = irandom(Items.hp)

function Interact() {
	if oPlayer.coins >= cost {
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
