/// @description Insert description here
// You can write your code in this editor

score += 10

instance_destroy()

with(other){
	instance_destroy()
	
	if(sprite_index == s_asteroid_large){
		repeat(choose(2, 3, 2, 4)){
			var new_asteroid = instance_create_layer(x,y, "Instances", o_asteroid)
			new_asteroid.sprite_index = s_asteroid_medium
		}
	} else if (sprite_index == s_asteroid_medium){
		repeat(choose(2, 3, 2, 4)){
			var new_asteroid = instance_create_layer(x,y, "Instances", o_asteroid)
			new_asteroid.sprite_index = s_asteroid_small
		}
	}
	
	repeat(10){
		instance_create_layer(x,y, "Instances", o_debris)
	
	}
}