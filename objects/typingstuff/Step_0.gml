if (keyboard_check_pressed(vk_enter)) {
	var player_input = keyboard_string;
	keyboard_string = "";
	
	
	
	if (player_input == "play") {
	room_goto_next();
	audio_play_sound(play_sound,5,false);
	}
	
	
	
	
	
	
	
	
	
	
}