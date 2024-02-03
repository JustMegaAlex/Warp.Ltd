
var ratio = display_get_width() / vieww

camera_set_view_size(view_camera[0], vieww, display_get_height() / ratio)
display_set_gui_size(vieww, display_get_height() / ratio)
