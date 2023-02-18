// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function highscore_load(){
	var file = working_directory + "/highscore";
	try{
		var handle = file_text_open_read(file);
		global.highscores = json_parse(file_text_read_string(handle))
		file_text_close(handle)
	}catch(_e){
		show_debug_message("Error occured loading highscores")
		global.highscores = {
			one:{score:0, name:0},
			two:{score:0, name:0},
			three:{score:0, name:0},
			four:{score:0, name:0},
			five:{score:0, name:0},
			six:{score:0, name:0},
			seven:{score:0, name:0},
			eight:{score:0, name:0},
			nine:{score:0, name:0},
			ten:{score:0, name:0}
		}
	}
}

function highscore_save(){
	var file = working_directory + "/highscore";
	var handle = file_text_open_write(file);
	file_text_write_string(handle, json_stringify(global.highscores));
	file_text_close(handle);
}