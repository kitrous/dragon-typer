draw_self();
scribble(global.rand_dialogue1,23224);
//text

draw_set_colour(c_white)
draw_set_font(JetBrains);


draw_set_valign(fa_middle);

draw_set_halign(fa_center)
//scribble stuff

draw_text_scribble(x,y-250,global.rand_dialogue1);


//healthbar, some issues with this -- when I use variables for the x and y of the sprites, it does not work as intended
draw_sprite(sHealthbar_bg,0,objLinda.x-160,objLinda.y-400);

draw_sprite_stretched(sHealthbar,0,objLinda.x-160,objLinda.y-400,(global.lindaHP/global.lindaHPmax) * healthbar_width, healthbar_height+55);

draw_sprite(sHealthbar_Border,0,objLinda.x-160,objLinda.y-400);

//objBilly spotted
var sCollision = collision_rectangle(x + -200, y + -200, x + 200, y + 200, objBilly, true, 1);
if(sCollision){
draw_sprite(sSpotted,0,objLinda.x,objLinda.y-400);

 
}

