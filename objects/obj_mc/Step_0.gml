///@description Player Behavior

left = -keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
up = keyboard_check_pressed(vk_space)

move = left + right

hsp = move*spd

if(move != 0){
	image_xscale = move
}

if(tilemap_get_at_pixel(tile, x, y + 1) && up){
	if(!tilemap_get_at_pixel(tile, x, y - 200)){vsp = -jmp}
	else { vsp = -15 }
}

if(vsp < 23) { vsp += grav }

if(tilemap_get_at_pixel(tile, x, y + vsp)){

	while(!tilemap_get_at_pixel(tile, x, y + sign(vsp))){
		y += sign(vsp)
	}
	vsp = 0;
}

if(tilemap_get_at_pixel(tile, x + hsp + sprite_width/2, y)){
	while(!tilemap_get_at_pixel(tile, x + sign(vsp) + sprite_width/2, y)){
		x += sign(hsp)
	}
	hsp = 0;
}

x += hsp
y += vsp