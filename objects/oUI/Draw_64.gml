
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var h = display_get_gui_height()
// ammo
draw_sprite_ext(sUIBlaster, oBlaster.ammo, ui_x, h + ammo_rely,  ui_scale, ui_scale, 0, c_white, 1)
// hp
draw_sprite_ext(sUIHp, oPlayer.hp, ui_x, h + hp_rely,  ui_scale, ui_scale, 0, c_white, 1)
// coins
draw_sprite_ext(sUICoins, oPlayer.coins, ui_x, h + coins_rely,  ui_scale, ui_scale, 0, c_white, 1)
draw_text_ext_transformed(ui_x + 28, h + coins_rely, string(oPlayer.coins), 0, 100, ui_scale, ui_scale, 0)
// clips
draw_sprite_ext(sUIPlazmaClip, 0, clip_x, h + ammo_rely,  ui_scale, ui_scale, 0, c_white, 1)
draw_text_ext_transformed(clip_x + 4, h + ammo_rely, string(oPlayer.plazma_clips), 0, 100, ui_scale, ui_scale, 0)
// heals
draw_sprite_ext(sUIStipPack, 0, stim_x, h + ammo_rely,  ui_scale, ui_scale, 0, c_white, 1)
draw_text_ext_transformed(stim_x + 4, h + ammo_rely, string(oPlayer.stimpacks), 0, 100, ui_scale, ui_scale, 0)

if is_transition {
	draw_set_color(c_black)
	var yy = h * transition * 0.5
	draw_rectangle(0, 0, display_get_gui_width(), yy, false)
	draw_rectangle(0, h, display_get_gui_width(), h - yy, false)
	draw_set_color(c_white)
}

