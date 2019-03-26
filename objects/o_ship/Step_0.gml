/// @description Insert description here
// You can write your code in this editor


// Movement Logic
if(keyboard_check(vk_left)){
	image_angle += 5
}
if(keyboard_check(vk_right)){
	image_angle -= 5
}
if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05)
}
if(keyboard_check_pressed(vk_space)){
	// Create a bullet and save it as an instance for further manipulation
	var bullet_instance = instance_create_layer(x,y, "Instances", o_bullet)
	bullet_instance.direction = image_angle
}


move_wrap(true, true, sprite_width/2)
// End Movement Logic