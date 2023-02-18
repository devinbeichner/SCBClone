/// @description Insert description here
// You can write your code in this editor
draw_set_font(Breathe);
draw_set_halign(fa_center);

for (var i = 0; i < array_length_2d(menu, menu_level); i++) {
	if(menu_level == 0){
		draw_set_color(c_red)
		draw_text_transformed(room_width / 2, room_height * .25, "SUPER CRATE BOX", 2, 2, 0)
	}
	
		draw_set_color(pos == i ? c_yellow : c_red);
		draw_text(room_width / 2, (room_height * .4) + (yOff * i) + y_start, menu[menu_level, i]);
	
	
}