
depth = -y

if is_interactible {
	if global.interact_inst == id {
		if oInput.key_interact {
			Interact()	
		}
		if inst_dist(oPlayer) > interaction_dist {
			global.interact_inst = noone	
		}
	} else if !global.interact_inst and inst_dist(oPlayer) < interaction_dist {
		global.interact_inst = id
	}
}
