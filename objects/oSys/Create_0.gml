
ensure_singleton()
randomize()
debug_draw_ini()
draw_set_font(fnt_ezConsole_Smooth)
layer_set_visible("Tiles", true)
audio_master_gain(0.25)

global.DEBUG = !RELEASE

vieww = 960
viewh = 720

view_enabled = true
view_visible[0] = true
camera_set_view_size(view_camera[0], vieww, viewh)

escape_pressed = make_timer(120, false)

alarm[0] = 10

