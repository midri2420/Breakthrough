if(image_index == 0){
	with(obj_bat){
		obj_bat.image_xscale = 1.5;
		alarm[0] = 10*room_speed;
	}
} else if (image_index == 1){
	with(obj_ball){
		speed = spd;
	}
} else if (image_index == 2){
	global.player_lives += 1;} 
	
if (image_index == 0){
	instance_create_layer(obj_bat.xstart, obj_bat.ystart - obj_bat.sprite_height, "Instances", obj_ball, {speed: 10, sprite_index : 1});
}
instance_destroy();