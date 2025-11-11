draw_sprite(sHealthbar_bg,0,100,100);

draw_sprite_stretched(sHealthbar,0,100,100,(global.billyHP/global.maxBillyHP) * healthbar_width, healthbar_height+55);

draw_sprite(sHealthbar_Border,0,100,100);

draw_sprite(sBilly_Head,0,50,0);

draw_text_scribble(1000,1000,global.pointSystem);