




if (keyboard_check_pressed(vk_enter)) {
	var player_input = keyboard_string;
	keyboard_string = "";
	
	var attackHit = false;
	
if (player_input == "gloves"){
	sprite_index = Billy_Walk_Glove;
	gloves = true;
	global.lugarHit = true;
	global.lugarHP -= 25
	audio_play_sound(Powerup,5,false);
	attackHit = true;
	alarm[2] = 30;
	global.pointSystem += 200;
	}
//Lugar Questions
	if ((player_input == "kick" && (facing == 1  && global.random_index == 0)) || facing == -1) {
	sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 25
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true;
	alarm[2] = 30;
	global.pointSystem += 200;
	} 
	
	if ((player_input == "punk" && (facing == 1  && global.random_index == 2)) || facing == -1) {
	sprite_index = Billy_Punch_RIGHT;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 10
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true;
	alarm[2] = 30;
	global.pointSystem += 100;
	} 
	
	if ((player_input == "mathematical" && (facing == 1 && global.random_index == 3)) || facing == -1) {
	sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 25
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true
	alarm[2] = 30;
	global.pointSystem += 100;
	} 
	
		if ((player_input == "knuckle sandwich" && (facing == 1  && global.random_index == 4)) || facing == -1) {
			if (gloves) {
			sprite_index = Billy_Punch_RIGHT_Glove;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 25
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true
	alarm[2] = 30;
	global.pointSystem += 100;
			}
	sprite_index = Billy_Punch_RIGHT;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 25
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true
	alarm[2] = 30;
	global.pointSystem += 100;
	} 
	
	
	
	
	
	
//Linda Questions
if ((player_input == "coming" && (facing == 1 && global.rand_index1 == 0)) || facing == -1) {
	sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lindaHP -= 25
	global.lindaHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true
	alarm[2] = 30;
	global.pointSystem += 100;
	} 
	
	if ((player_input == "problem" && (facing == 1 && global.rand_index1 == 1)) || facing == -1) {
	sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lindaHP -= 25
	global.lindaHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true
	alarm[2] = 30;
	global.pointSystem += 100;
	} 
	
	if ((player_input == "new york" && (facing == 1 && global.rand_index1 == 2)) || facing == -1) {
	sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lindaHP -= 25
	global.lindaHit = true;
	audio_play_sound(Hit,5,false);
	attackHit = true
	alarm[2] = 30;
	global.pointSystem += 300;
	} 
	
	
	
	
	
	
	
	
	
	
//Miscellaneous
	if (!attackHit) {
	global.billyHP -= 25
	sprite_index = Billy_Hurt;
	audio_play_sound(Fail,5,false);
	alarm[2] = 30;
	global.pointSystem -= 250;
	}
	if (global.billyHP <= 0){
	billyDead = true;
	
	}
	if (billyDead) {
	speed = 0;
	alarm[1] = 90;
	}
	if (global.pointSystem >= 250){
	
	
	}
}