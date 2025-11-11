if (keyboard_check_pressed(vk_enter)) {
	var player_input = keyboard_string;
	keyboard_string = "";
	
	var attackHit = false;
	
if (player_input == "gloves"){
	GlovesPowerup();
	attackHit = true;
	}
//Lugar Questions
	if ((player_input == "kick" && (facing == 1  && global.random_index == 0)) || facing == -1) {
	KickAttack();
	attackHit = true;
	} 
	
	if ((player_input == "punk" && (facing == 1  && global.random_index == 2)) || facing == -1) {
	PunchAttack();
	attackHit = true;
	} 
	
	if ((player_input == "mathematical" && (facing == 1 && global.random_index == 3)) || facing == -1) {
	KickAttack();
	attackHit = true;
	} 
	
		if ((player_input == "knuckle sandwich" && (facing == 1  && global.random_index == 4)) || facing == -1) {
			if (gloves) {
			GlovesPowerupPunch();
			attackHit = true;
			}
	PunchAttack();
	attackHit = true;
	} 
		
//Linda Questions
if ((player_input == "coming" && (facing == 1 && global.rand_index1 == 0)) || facing == -1) {
	KickAttackLinda();
	attackHit = true;
	} 
	
	if ((player_input == "problem" && (facing == 1 && global.rand_index1 == 1)) || facing == -1) {
	KickAttackLinda();
	attackHit = true;
	} 
	
	if ((player_input == "new york" && (facing == 1 && global.rand_index1 == 2)) || facing == -1) {
	KickAttackLinda();
	attackHit = true;
	} 
	
//Miscellaneous
	if (!attackHit) {
	BillyHit();
	}
	
	if (global.billyHP <= 0){
	billyDead = true;
	}
	
	if (billyDead) {
	speed = 0;
	alarm[1] = 90;
	}
}