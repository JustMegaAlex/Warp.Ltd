
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)

var h = display_get_gui_height()
draw_sprite(sUIBlaster, oBlaster.ammo, ui_x, h + ammo_rely)
draw_sprite(sUIHp, oPlayer.hp, ui_x, h + hp_rely)
draw_sprite(sUICoins, oPlayer.coins, ui_x, h + coins_rely)
draw_text(ui_x + 28, h + coins_rely, string(oPlayer.coins))
draw_sprite(sUIPlazmaClip, 0, clip_x, h + ammo_rely)
draw_text(clip_x + 4, h + ammo_rely, string(oPlayer.plazma_clips))
draw_sprite(sUIStipPack, 0, stim_x, h + ammo_rely)
draw_text(stim_x + 4, h + ammo_rely, string(oPlayer.stimpacks))

if is_transition {
	draw_set_color(c_black)
	var yy = h * transition * 0.5
	draw_rectangle(0, 0, display_get_gui_width(), yy, false)
	draw_rectangle(0, h, display_get_gui_width(), h - yy, false)
	draw_set_color(c_white)
}

