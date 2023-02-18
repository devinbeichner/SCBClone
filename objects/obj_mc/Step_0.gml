/// @description Insert description here
// You can write your code in this editor

//NONE OF THIS WORKS, but I'm done for now.

key_right = keyboard_check_pressed(ord("D"))
key_left = keyboard_check_pressed(ord("A"))
key_jump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)

hspd = (key_right - key_left) * walk

vspd = vspd + grv

if(place_meeting(x, y+1, obj_floor_tile) && key_jump){
	vspd = jump
}

var onepixel = sign(hspd)

if(place_meeting(x+hspd, y, obj_wall_tile)){
	while(!place_meeting(x+onepixel, y, obj_wall_tile)){
		x = x + onepixel
	}
	hspd = 0;
}

x = x + hspd

var onepixel = sign(vspd) //up = -1, down = 1.
if (place_meeting(x,y+vspd, obj_floor_tile))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,obj_floor_tile))
    {
        y = y + onepixel;
    }
    vspd = 0;
}
y = y + vspd;