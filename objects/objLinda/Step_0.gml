//starts the path and ensures the speed is correct while in idle pathing
if (path_start && idle == true){
image_speed = 0.3;

}

//turn logic
if (direction > 90 and direction < 270 ) {  image_xscale = -1; }
	else {  image_xscale = 1; }
//collision logic - used with gml visual, edited with gml code
var sCollision = collision_rectangle(x + -200, y + -200, x + 200, y + 200, objBilly, true, 1);
	if(sCollision){
		if (global.lindaHP > 0) {
	idle = false;
	direction = point_direction(x, y, objBilly.x+200, objBilly.y+200);
	speed = .5;
	path_end();
		}
} else {
	idle = true;
}
//new question when hit
if (global.lindaHit) {
	
global.rand_index1 = irandom(array_length(global.dialogue1) - 1);
global.rand_dialogue1 = global.dialogue1[global.rand_index1];

image_index = 0;
global.lindaHit = false;

}

if (!global.lindaHit) {
	if (global.lindaHP > 0) {
sprite_index = Linda;
image_index += 0;
image_speed = 0.3;
	}
}

if (global.lindaHP <= 0) {
	if (alarm[0] == -1) {

image_index = 0;
image_speed = 0.3;
idle = false;
speed = 0;
alarm[0] = 120;

	}
}