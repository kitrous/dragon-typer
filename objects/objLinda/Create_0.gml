idle = true;



global.lindaHP = 100
global.lindaHPmax = global.lindaHP;
global.lindaDead = false;

global.lindaHit = false;

image_speed = 0;

speed = 3;

healthbar_width = 360;
healthbar_height = 25;

global.dialogue1 = [
	"I'm[jitter][c_red] coming[/jitter][c_white] for you!",//0
	"The hell's your[jitter][c_red] problem?",//1
	"Where the hell[wave][c_blue] are you from?",//2
	//3
];

global.rand_index1 = irandom(array_length(global.dialogue1) - 1);
global.rand_dialogue1 = global.dialogue1[global.rand_index1];

path_start(Path2,3,path_action_reverse,3);

randomize();






