image_speed = 0;

spd = 6;

anispd = 1;

facing = 1

sprite_scale = image_xscale;

gloves = false;

billyDead = false;
healthbar_width = 360;
healthbar_height = 25;

global.billyHP = 100;
global.maxBillyHP = global.billyHP;

objBilly.x = x;
objBilly.y = y;

global.Timer = 5;

global.pointSystem = 0


//Methods
function GlovesPowerup() {
sprite_index = Billy_Walk_Glove;
	gloves = true;
	global.lugarHit = true;
	global.lugarHP -= 25
	audio_play_sound(Powerup,5,false);
	alarm[2] = 30;
	global.pointSystem += 200;

}

function KickAttack() {
	sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 25
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	alarm[2] = 30;
	global.pointSystem += 200;
}

function PunchAttack() {
	sprite_index = Billy_Punch_RIGHT;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 10
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	alarm[2] = 30;
	global.pointSystem += 100;
}

function GlovesPowerupPunch() {
	sprite_index = Billy_Punch_RIGHT_Glove;
	image_index += 0
	image_speed = 0.6;
	global.lugarHP -= 25
	global.lugarHit = true;
	audio_play_sound(Hit,5,false);
	alarm[2] = 30;
	global.pointSystem += 100;
}

function KickAttackLinda() {
sprite_index = Billy_Kick;
	image_index += 0
	image_speed = 0.6;
	global.lindaHP -= 25
	global.lindaHit = true;
	audio_play_sound(Hit,5,false);
	alarm[2] = 30;
	global.pointSystem += 100;
}

function BillyHit() {
	global.billyHP -= 25
	sprite_index = Billy_Hurt;
	audio_play_sound(Fail,5,false);
	alarm[2] = 30;
	global.pointSystem -= 250;
}