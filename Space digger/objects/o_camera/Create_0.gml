view_width = room_width; //Max window width
view_height = 768; //Max window height
window_set_size(view_width,view_height); //You guessed it, we're limiting the window to these sizes
alarm[0] = 1;
surface_resize(application_surface,view_width,view_height);