score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_hive_big){
		repeat(2){
			var new_hive = instance_create_layer(x,y,"Instances",obj_hive);
			new_hive.sprite_index = spr_hive_med;
		}
	} else if (sprite_index == spr_hive_med){
		repeat(2){
			var new_hive = instance_create_layer(x,y,"Instances",obj_hive);
			new_hive.sprite_index = spr_hive_small;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
}
