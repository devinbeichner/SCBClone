/// @description Insert description here
// You can write your code in this editor
var _up = keyboard_check_pressed(ord("W"));
var _down = keyboard_check_pressed(ord("S"));
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var move = _down - _up

if move != 0 {
	pos += move
	
	var list_length = array_length_2d(menu, menu_level)
	if pos < 0 pos = list_length - 1
	else if pos >= list_length pos = 0
}

if _select {
	switch(menu_level){
		case 0:
			//Main Menu
			switch(pos) {
				case 0:
					//Start
					menu_level = 2;
					pos = irandom(1);
					y_start = 200;
					show_debug_message(pos)
					break;
			
				case 1:
					//Highscores
					menu_level = 3;
					y_start = 400;
					pos = 0;
					break;
			
				case 2:
					//Options
					menu_level = 1;
					pos = 0;
					break;
			
				case 3:
					//Credits
					break;
			
				case 4:
					//Exit
					game_end();
					break;
			}
			break;
			
		case 1:
		
			//Options Menu
			switch(pos){
				
				case 0:
					//Music
					break;
					
				case 1:
					//SFX
					break;
					
				case 2:
					//Back
					menu_level = 0;
					pos = 0;
					break;
			}
			break;
			
		case 2:
		
			//Char Select Menu
			switch(pos) {
				
				case 0:
					//LoopyBear Select
					room_goto(rm_game)
					break;
					
				case 1:
					//Pink Witch Select
					room_goto(rm_game)
					break;
					
				case 2:
					//Back
					menu_level = 0;
					y_start = 0;
					pos = 0;
					break;
			}
			break;
			
		case 3:
		
			//Highscore menu, only needs to display and go back
			menu_level = 0;
			y_start = 0;
			pos = 0;
			break;
			
	}
}